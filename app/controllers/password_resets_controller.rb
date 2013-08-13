class PasswordResetsController < ApplicationController
  skip_before_filter :require_login

  #This is when the user requests a reset
  def create
    @user = User.find_by_email params[:email]
    if @user
      @user.deliver_reset_password_instructions!
    end

    redirect_to root_path, notice: "Reset instructions have been sent to your email"
  end

  #This is when the user is actually resetting his password
  def edit
    @user = User.load_from_reset_password_token params[:id]
    @token = params[:id]
    not_authenticated unless @user
  end

  def update
    @token = params[:token]
    @user = User.load_from_reset_password_token params[:token]
    not_authenticated and return unless @user

    @user.password_confirmation = params[:user][:password_confirmation]

    if @user.change_password! params[:user][:password]
      redirect_to root_path, notice: "Password was successfully changed"
    else
      render action: "edit"
    end
  end
end

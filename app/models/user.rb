class User < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :username, :email, :password, :password_confirmation
  validates_length_of :password, :minimum => 1, :message => "password must be at least 1 characters long", :if => :password
  validates_confirmation_of :password, :message => "should match confirmation", :if => :password
  validates_uniqueness_of :email

  has_many :exercises

end

class User < ActiveRecord::Base
  attr_accessible :username, :email, :password, :password_confirmation, :authentications_attributes
  validates_presence_of :email
  validates_uniqueness_of :email

  authenticates_with_sorcery! do |config|
    config.authentications_class = Authentication
  end

  has_many :authentications, dependent: :destroy
  accepts_nested_attributes_for :authentications
  has_many :exercises
end

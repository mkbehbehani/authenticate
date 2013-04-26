class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :email, :name, :password, :password_confirmation, :auth_token, :question
  validates_presence_of :email, :name, :password, :password_confirmation, :auth_token, :question, :on => :create


end

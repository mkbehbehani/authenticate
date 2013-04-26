class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :email, :name, :password, :password_confirmation, :auth_token, :question
  validates_presence_of :email, :name, :password, :password_confirmation, :auth_token, :question, :on => :create
  

  before_create { create_token (:auth_token)}
  #runs generate_token method, passing it into auth_token column

  def send_password_reset
    generate_token(:password_reset_token)
    
  end

  # any db column can later be given as an argument
  def create_token(column)
  	begin
  #creates a token string, which will be added to column
  	  self[column] = SecureRandom.urlsafe_base64
  #creates a loop, adding to column only if the SecureRandom generated token
  #matches no other token. Ensures unique token string.
  	end while User.exists?(column => self[column])
  
  end


end

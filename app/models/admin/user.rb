class Admin::User < ActiveRecord::Base
  attr_accessible :email, :password_digest, :password, :password_confirmation, :admin_name
  has_secure_password 
end

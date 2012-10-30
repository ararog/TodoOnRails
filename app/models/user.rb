class User < ActiveRecord::Base
  attr_accessible :password, :username
  
  has_many :tasks
  
  def self.authenticated?(username, password)
    User.find_by_username_and_password(username, password)
  end  
end

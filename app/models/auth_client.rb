class AuthClient < ActiveRecord::Base
  has_many :authentications
  has_many :imports, :through => :authentications
  
  attr_accessible :app_key, :app_secret, :name, :title
  
  scope :active, where(:active => true)
end

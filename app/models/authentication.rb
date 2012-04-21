class Authentication < ActiveRecord::Base
  belongs_to :auth_client
  belongs_to :user
  has_many :imports
  
  serialize :omniauth_data
  attr_accessible :auth_client_id, :user_id, :secret, :token, :uid, :auth_client_name, :omniauth_data, :expires_at
end

class Authentication < ActiveRecord::Base
  belongs_to :auth_client
  belongs_to :user
  
  serialize :omniauth_data
  attr_accessible :auth_client_id, :expires_at, :secret, :token, :uid, :user_id, :auth_client_name, :omniauth_data
end

class User < ActiveRecord::Base
  has_many :authentications, :dependent => :destroy
  
  attr_accessible :first_name, :last_name, :email
  
  def self.find_or_create_from_omniauth(data, current_user=nil)
    auth_client = AuthClient.find_by_name(data['provider'])
    auth = Authentication.find_by_auth_client_name_and_uid(data['provider'], data['uid'])
    
    if auth.present? && auth.user.present?
      return auth.user
    else
      if current_user.present?
        user = current_user
      elsif data['info']['email'].present? && User.find_by_email(data['info']['email']).present?
        user = User.find_by_email(data['info']['email'])
      else
        user = User.create(:email => data['info']['email'], :first_name => data['info']['first_name'], :last_name => data['info']['last_name'])
      end
      user.authentications.create(:auth_client_id => auth_client.try(:id), :auth_client_name => data['provider'], :uid => data['uid'], :omniauth_data => data)
      return user
    end
  end
end

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  has_many :authentications, :dependent => :destroy
  has_many :imports, :through => :authentications
  
  attr_accessible :first_name, :last_name, :email, :zipcode, :date_of_birth, :gender, :ethnicity
  
  validates :first_name, :last_name, :zipcode, :date_of_birth, :gender, :presence => true
  
  geocoded_by :zipcode
  after_validation :geocode
  
  
  def self.find_or_create_from_omniauth(data, current_user=nil)
    auth_client = AuthClient.find_by_name(data['provider'])
    auth = Authentication.find_by_auth_client_name_and_uid(data['provider'], data['uid'].try(:to_s))
    
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

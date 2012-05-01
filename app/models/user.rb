class User < ActiveRecord::Base
  has_many :authentications, :dependent => :destroy
  has_many :imports, :through => :authentications
    
  validates :first_name, :last_name, :presence => true

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :email, :zipcode, :date_of_birth, :gender, :ethnicity
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  
  geocoded_by :zipcode
  after_validation :geocode
  
end

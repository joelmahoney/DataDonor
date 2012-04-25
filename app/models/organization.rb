class Organization < ActiveRecord::Base
  has_many :projects
  
  attr_accessible :description, :name
end

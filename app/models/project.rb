class Project < ActiveRecord::Base
  belongs_to :organization
  
  attr_accessible :description, :location, :name, :organization_id, :start_date
end

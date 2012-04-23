class Project < ActiveRecord::Base
  attr_accessible :description, :location, :name, :organization_id, :start_date
end

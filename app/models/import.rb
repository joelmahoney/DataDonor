class Import < ActiveRecord::Base
  belongs_to :authentication
  
  attr_accessible :data
  
  serialize :data
  
end

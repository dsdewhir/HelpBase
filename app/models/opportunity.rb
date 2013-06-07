class Opportunity < ActiveRecord::Base
  attr_accessible :contact_id, :organization_id, :progress, :status
  
  belongs_to :contact
  belongs_to :organization
end

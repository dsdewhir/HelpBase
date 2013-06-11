class Invoice < ActiveRecord::Base
  attr_accessible :duedate, :notes, :organization_id, :paid
end

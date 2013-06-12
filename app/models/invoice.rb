class Invoice < ActiveRecord::Base
  attr_accessible :contact_id, :duedate, :notes, :organization_id, :paid, :totalamount

  belongs_to :contact
  belongs_to :organization
end

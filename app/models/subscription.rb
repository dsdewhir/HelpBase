class Subscription < ActiveRecord::Base
  attr_accessible :enddate, :invoice_id, :startdate
  
  belongs_to :invoice
end

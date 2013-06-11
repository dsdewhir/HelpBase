class Invoiceitem < ActiveRecord::Base
  attr_accessible :amount, :description, :invoice_id, :subscription_id
end

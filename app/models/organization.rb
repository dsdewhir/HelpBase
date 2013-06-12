class Organization < ActiveRecord::Base
  attr_accessible :address, :address2, :city, :companyemail, :fax, :notes, :organizationname, :phone, :state, :zip
  
  has_and_belongs_to_many :contacts
  has_many :invoices
end

class Contact < ActiveRecord::Base
  attr_accessible :address, :address2, :city, :contactemail, :firstname, :lastname, :notes, :phone, :state, :zip
  
  has_and_belongs_to_many :organizations
  has_many :invoices
end

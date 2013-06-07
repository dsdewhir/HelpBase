class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :organizationname
      t.string :address
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :fax
      t.string :companyemail
      t.text :notes

      t.timestamps
    end
  end
end

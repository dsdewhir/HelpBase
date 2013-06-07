class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :firstname
      t.string :lastname
      t.string :address
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :contactemail
      t.text :notes

      t.timestamps
    end
  end
end

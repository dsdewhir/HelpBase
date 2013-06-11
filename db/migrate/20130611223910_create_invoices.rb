class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer,contact_id :organization_id
      t.date :duedate
      t.integer :paid
      t.text :notes

      t.timestamps
    end
  end
end

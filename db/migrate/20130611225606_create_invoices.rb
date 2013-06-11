class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :organization_id
      t.integer :contact_id
      t.decimal :totalamount,:precision => 8, :scale => 2
      t.date :duedate
      t.integer :paid
      t.text :notes

      t.timestamps
    end
  end
end

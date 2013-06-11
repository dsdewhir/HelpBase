class CreateInvoiceitems < ActiveRecord::Migration
  def change
    create_table :invoiceitems do |t|
      t.integer :invoice_id
      t.integer :subscription_id
      t.text :description
      t.decimal :amount,:precision => 8, :scale => 2

      t.timestamps
    end
  end
end

class ChangeAmountTypeInInvoiceitem < ActiveRecord::Migration
  def up
    change_column :invoiceitems, :amount, :decimal, :precision=>8, :scale=>2
  end

  def down
    change_column :invoiceitems, :amount, :integer
  end
end

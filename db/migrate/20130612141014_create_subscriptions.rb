class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :invoice_id
      t.date :enddate
      t.date :startdate

      t.timestamps
    end
  end
end

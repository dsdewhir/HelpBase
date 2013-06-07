class CreateOpportunities < ActiveRecord::Migration
  def change
    create_table :opportunities do |t|
      t.integer :progress
      t.integer :status
      t.integer :contact_id
      t.integer :organization_id

      t.timestamps
    end
  end
end

class AddContactsOrganizationsJoinTable < ActiveRecord::Migration
  def change
    create_table :contacts_organizations, :id => false do |t|
      t.integer :contact_id
      t.integer :organization_id
    end
  end
end

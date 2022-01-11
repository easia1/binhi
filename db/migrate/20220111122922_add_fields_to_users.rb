class AddFieldsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :username, :string
    add_column :users, :occupation, :string
    add_column :users, :admin, :boolean, :default => false
  end
end

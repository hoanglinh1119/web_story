class AddColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :username, :string, null:false, default: ""
    add_column :users, :avatar, :string, limit:3000
    add_column :users, :role, :integer, limit: 1, default: 0
  end
end

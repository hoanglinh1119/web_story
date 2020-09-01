class AddToColumnPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :avatar, :string, limit:3000
  end
end

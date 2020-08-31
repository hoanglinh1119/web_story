class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.belongs_to :user
      t.text :content
      t.integer :status_active, limit: 2, default: 1
      t.string :avatar_author
      t.datetime :create_at
      t.datetime :public_at
      t.timestamps
    end
  end
end

class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.belongs_to :user
      t.belongs_to :post
      t.text :content
      t.string :avatar
      t.datetime :create_at
      t.datetime :update_at
      t.timestamps
    end
  end
end

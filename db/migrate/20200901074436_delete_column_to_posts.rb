class DeleteColumnToPosts < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts , :avatar_author
  end
end

class AddItemsToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :seo, :string
    add_column :posts, :published, :boolean, default: false
    add_column :posts, :user_id, :integer
    add_column :posts, :category_id, :integer
  end
end

class FixTableName < ActiveRecord::Migration[5.1]
  def change
    rename_table :cateogries_posts, :categories_posts
  end
end

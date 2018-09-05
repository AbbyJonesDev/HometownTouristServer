class Associations < ActiveRecord::Migration[5.1]
  def change
    # Categories and Posts
    create_table :cateogries_posts, id: false do |t|
      t.integer :category_id
      t.integer :post_id
    end
 
    add_index :cateogries_posts, :category_id
    add_index :cateogries_posts, :post_id

    # Categories and Events
    create_table :cateogries_events, id: false do |t|
      t.integer :category_id
      t.integer :event_id
    end
 
    add_index :cateogries_events, :category_id
    add_index :cateogries_events, :event_id

    # Tags and Posts
    create_table :posts_tags, id: false do |t|
      t.integer :post_id
      t.integer :tag_id
    end
 
    add_index :posts_tags, :post_id
    add_index :posts_tags, :tag_id

    # Tags and Events
    create_table :events_tags, id: false do |t|
      t.integer :event_id
      t.integer :tag_id
    end
 
    add_index :events_tags, :event_id
    add_index :events_tags, :tag_id
  end
end

class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.integer :author_id, null: false
      t.string :title, null: false
      t.string :place, null: false
      t.string :featured_image
      t.text :body
      t.datetime :publish_date
      t.integer :city_id
      t.integer :state_id
      t.timestamps
    end
  end
end

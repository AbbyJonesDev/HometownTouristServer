class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.string :featured_image
      t.text :body
      t.datetime :start_date
      t.datetime :end_date
      t.integer :author_id
      t.integer :city_id
      t.integer :state_id
      t.timestamps
    end
  end
end

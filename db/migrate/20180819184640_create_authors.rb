class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.string :firstName
      t.string :lastName
      t.text :bio
      t.string :photoUrl

      t.timestamps
    end
  end
end

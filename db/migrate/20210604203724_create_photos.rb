class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.references :category, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :likes
      t.date :date

      t.timestamps
    end
  end
end

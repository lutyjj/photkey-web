class CreateLikeLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :like_logs do |t|
      t.references :user, null: false, foreign_key: true
      t.references :photo, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end

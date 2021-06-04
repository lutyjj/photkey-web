class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :login
      t.string :email
      t.date :join_date
      t.string :bio
      t.integer :like_limit

      t.timestamps
    end
  end
end

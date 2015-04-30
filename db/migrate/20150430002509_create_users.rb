class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :id
      t.string :name
      t.string :user_id
      t.string :password_digest
      t.boolean :admin
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end

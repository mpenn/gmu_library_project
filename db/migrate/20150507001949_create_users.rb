class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_id
      t.string :password_digest
      t.string :name
      t.boolean :admin
      t.timestamps null: false
    end
  end
end

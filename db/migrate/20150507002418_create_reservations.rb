class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :reserved_on
      t.string :user
      t.string :book_id
      t.datetime :created_at

      t.timestamps null: false
    end
  end
end

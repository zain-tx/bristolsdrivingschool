class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.string :lesson
      t.string :instructor
      t.date :start_date
      t.string :time
      t.string :name
      t.string :email
      t.string :phone
      t.text :special_request

      t.timestamps
    end
  end
end

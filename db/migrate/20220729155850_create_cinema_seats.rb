class CreateCinemaSeats < ActiveRecord::Migration[6.0]
  def change
    create_table :cinema_seats do |t|
      t.integer :seat_no
      t.string :type
      t.belongs_to :cinema_hall, null: false, foreign_key: true

      t.timestamps
    end
  end
end

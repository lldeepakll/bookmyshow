class CreateCinemaHalls < ActiveRecord::Migration[6.0]
  def change
    create_table :cinema_halls do |t|
      t.integer :hall_no
      t.integer :total_seats
      t.belongs_to :cinema, null: false, foreign_key: true

      t.timestamps
    end
  end
end

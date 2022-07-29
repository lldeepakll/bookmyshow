class RenameTypeToSeatType < ActiveRecord::Migration[6.0]
  def change
    rename_column :cinema_seats, :type, :seat_type
  end
end

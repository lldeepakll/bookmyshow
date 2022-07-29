class CreateCinemas < ActiveRecord::Migration[6.0]
  def change
    create_table :cinemas do |t|
      t.string :name
      t.integer :no_of_hall
      t.belongs_to :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end

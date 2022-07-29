class CinemaHall < ApplicationRecord
  belongs_to :cinema
  has_many :cinema_seats
  accepts_nested_attributes_for :cinema_seats
end

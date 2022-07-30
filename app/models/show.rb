class Show < ApplicationRecord
  belongs_to :cinema_hall
  belongs_to :movie
end

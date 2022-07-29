class Cinema < ApplicationRecord
  belongs_to :city
  has_many :cinema_halls
  accepts_nested_attributes_for :cinema_halls
end

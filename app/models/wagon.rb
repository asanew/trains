class Wagon < ApplicationRecord
  belongs_to :wagon_type
  belongs_to :train

  validates :top_seats, numericality: {greater_than_or_equal_to: 0}
  validates :bottom_seats, numericality: {greater_than: 0}
end
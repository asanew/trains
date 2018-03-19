class SeatWagon < Wagon
  validates :seat_places, numericality: { greater_than: 0 }
  validates :top_seats, :side_bottom_seats, :side_top_seats, :bottom_seats, numericality: { equal_to: 0 }
end
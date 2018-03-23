class ReservedWagon < Wagon
  validates :bottom_seats, :top_seats, :side_bottom_seats, :side_top_seats, numericality: { greater_than: 0 }
  validates :seat_places, numericality: { equal_to: 0 }
end
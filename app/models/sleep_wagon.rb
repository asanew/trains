class SleepWagon < Wagon
  validates :bottom_seats, numericality: { greater_than: 0 }
  validates :top_seats, :side_bottom_seats, :side_top_seats, :seat_places, numericality: { equal_to: 0 }
end
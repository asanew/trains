class Train < ApplicationRecord
  belongs_to :route
  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id
  has_many :tickets
  has_many :wagons

  def seats_info(wagon_type, seat_type)
    wagons.where('type = ?',wagon_type).sum(seat_type)
  end
end

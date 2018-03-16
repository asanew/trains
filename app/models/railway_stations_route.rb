class RailwayStationsRoute < ApplicationRecord
  belongs_to :railway_station
  belongs_to :route

  validates :railway_station_id, uniqueness: { scope: :route_id }
  validates :railway_station_number, uniqueness: { scope: :route_id }

  default_scope { order(:railway_station_number) }
end
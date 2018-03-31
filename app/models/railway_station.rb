class RailwayStation < ApplicationRecord
  has_many :trains, foreign_key: :current_station_id
  has_many :start_tickets, class_name: 'Ticket', foreign_key: :start_station_id
  has_many :end_tickets, class_name: 'Ticket', foreign_key: :end_station_id
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes

  def update_position(route, position)
    station_route = station_route(route)
    station_route.update(railway_station_number: position) if @station_route
  end

  def position_in(route)
    station_route(route).try(:railway_station_number)
  end

  def station_route(route)
    @station_route ||= railway_stations_routes.where(route: route).first
  end

  scope :number_sort, -> { order('railway_stations_routes.railway_station_number').all }
end

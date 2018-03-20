class Train < ApplicationRecord
  belongs_to :route
  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id
  has_many :tickets
  has_many :wagons

  def wagons_data
    result = {}
    Wagon.wagon_types.each do |wt|
      wagons_by_type = wagons.where(type: wt)
      result[wt] = { quantity: wagons_by_type.count, top_seats: 0, bottom_seats: 0 }
      wagons_by_type.each do |wagon|
        result[wt][:top_seats] += wagon.top_seats
        result[wt][:bottom_seats] += wagon.bottom_seats
      end
    end
    return result
  end
end

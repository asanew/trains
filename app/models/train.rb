class Train < ApplicationRecord
  belongs_to :route
  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id
  has_many :tickets
  has_many :wagons

  def get_wagons_data
    result = {}
    WagonType.all.each do |wt|
      wagons_by_type = wagons.where(wagon_type: wt)
      result[wt] = { quantity: wagons_by_type.count, top_seats: 0, bottom_seats: 0 }
      wagons_by_type.each do |wagon|
        result[wt][:top_seats] += wagon.top_seats
        result[wt][:bottom_seats] += wagon.bottom_seats
      end
    end
    return result
  end
end

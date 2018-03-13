class Train < ApplicationRecord
  belongs_to :route
  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id
  has_many :tickets
  has_many :wagons

  #def get_wagons_data
  #  result = {}
  #  WagonType.each do |wt|
  #    wagons_by_type = wagons.where(wagon_type: wt)
  #    result[wt] = [wagons_by_type.count, ]
  #  end
  #end
end

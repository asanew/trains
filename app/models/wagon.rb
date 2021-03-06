class Wagon < ApplicationRecord
  belongs_to :train

  before_create :set_number

  def self.wagon_types
     %w( CompartmentWagon ReservedWagon SeatWagon SleepWagon )
  end

  scope :ordered_wagons, -> (desc_sort) { order("number #{desc_sort ? 'DESC' : 'ASC'}").all }

  private

  def set_number
    self.number = ( train.wagons.maximum(:number) || 0 ) + 1
  end
end
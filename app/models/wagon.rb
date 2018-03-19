class Wagon < ApplicationRecord
  belongs_to :wagon_type
  belongs_to :train

  validates :number, presence: true

  before_validation :set_number

  private

  def set_number
    number = self.train.wagons.maximum(:number)+1
  end
end
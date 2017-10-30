class Wagon < ApplicationRecord
  belongs_to :wagon_type
  belongs_to :train
end
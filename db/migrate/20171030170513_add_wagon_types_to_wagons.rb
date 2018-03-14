class AddWagonTypesToWagons < ActiveRecord::Migration[5.1]
  def change
    add_belongs_to :wagons, :wagon_type
  end
end

class ChangeWagonTypeToSti < ActiveRecord::Migration[5.1]
  def change
    remove_belongs_to :wagons, :wagon_type
    change_table :wagons do |t|
      t.integer :side_top_seats
      t.integer :side_bottom_seats
      t.integer :seat_places
      t.string :type
    end
  end
end

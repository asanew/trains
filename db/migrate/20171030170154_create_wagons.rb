class CreateWagons < ActiveRecord::Migration[5.1]
  def change
    create_table :wagons do |t|
      t.integer :top_seats
      t.integer :bottom_seats
    end
  end
end

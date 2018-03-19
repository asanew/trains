class AddNumberToWagons < ActiveRecord::Migration[5.1]
  def change
    change_table :wagons do |t|
      t.integer :number
    end
  end
end

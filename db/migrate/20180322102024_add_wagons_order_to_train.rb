class AddWagonsOrderToTrain < ActiveRecord::Migration[5.1]
  def change
    change_table :trains do |t|
      t.boolean :wagons_order
    end
  end
end

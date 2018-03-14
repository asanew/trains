class CreateWagonTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :wagon_types do |t|
      t.string  :name
    end
  end
end

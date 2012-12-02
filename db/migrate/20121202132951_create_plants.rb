class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :type
      t.string :name
      t.string :best_location
      t.text :planting_instructions
      t.text :harvest_instructions
      t.text :plant_with
      t.text :dont_plant_with
      t.string :watering
      t.text :pests

      t.timestamps
    end
  end
end

class ChangeTypeToPlantTypeInPlants < ActiveRecord::Migration
  def change
    rename_column :plants, :type, :plant_type
  end
end

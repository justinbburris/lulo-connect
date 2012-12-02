class AddSlugToPlants < ActiveRecord::Migration
  def change
    add_column :plants, :slug, :string
    add_index :plants, :slug, unique: true
  end

  def up
    Plant.find_each(&:save) # establish slug
  end
end

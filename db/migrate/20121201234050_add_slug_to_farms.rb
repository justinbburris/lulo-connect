class AddSlugToFarms < ActiveRecord::Migration
  def change
    add_column :farms, :slug, :string
    add_index :farms, :slug, :unique => true    
  end

  def up
    Farm.find_each(&:save) # establish slug
  end
end

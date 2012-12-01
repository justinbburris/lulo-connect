class CreateFarms < ActiveRecord::Migration
  def change
    create_table :farms do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :user_id
      t.text :crops
      t.string :growing_season
      t.integer :size_in_acres
      t.string :type_of_farm
      t.string :website
      t.text :hours_of_operation
      t.boolean :volunteers_needed

      t.timestamps
    end
  end
end

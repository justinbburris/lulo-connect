class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :user_id
      t.string :website
      t.text :hours_of_operation

      t.timestamps
    end
  end
end

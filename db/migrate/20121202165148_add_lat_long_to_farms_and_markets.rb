class AddLatLongToFarmsAndMarkets < ActiveRecord::Migration
  def change
    add_column :farms, :latitude, :decimal, precision: 8, scale: 6
    add_column :farms, :longitude, :decimal, precision: 8, scale: 6

    add_column :markets, :latitude, :decimal, precision: 8, scale: 6
    add_column :markets, :longitude, :decimal, precision: 8, scale: 6
  end
end

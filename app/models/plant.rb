class Plant < ActiveRecord::Base
  attr_accessible :best_location, :dont_plant_with, :harvest_instructions, :name, :pests, :plant_with, :planting_instructions, :type, :watering
end

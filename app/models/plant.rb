class Plant < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  attr_accessible :best_location, :dont_plant_with, :harvest_instructions, :name, :pests, :plant_with, :planting_instructions, :plant_type, :watering
end

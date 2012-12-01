class Farm < ActiveRecord::Base
  attr_accessible :city, :crops, :growing_season, :hours_of_operation, :name, :size_in_acres, :state, :street, :type_of_farm, :user_id, :volunteers_needed, :website, :zip
end

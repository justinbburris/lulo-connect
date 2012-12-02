class Market < ActiveRecord::Base
  attr_accessible :city, :hours_of_operation, :name, :state, :street, :user_id, :website, :zip
end

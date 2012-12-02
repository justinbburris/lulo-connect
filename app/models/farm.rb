class Farm < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  attr_accessible :city, :crops, :growing_season, :hours_of_operation, :name, :size_in_acres, :state, :street, :type_of_farm, :user_id, :volunteers_needed, :website, :zip

  belongs_to :user

  validates_presence_of :name, :street, :city, :state, :zip, :type_of_farm, :user_id, :volunteers_needed

  validates :name, :uniqueness => true

  FARM_TYPES = ['Co-op', 'Community Garden', 'Subscription', 'Other']
end

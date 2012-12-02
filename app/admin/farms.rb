ActiveAdmin.register Farm do
  form do |f|
    f.inputs "Basics" do
      f.input :name
      f.input :street
      f.input :city
      f.input :state
      f.input :zip
      f.input :volunteers_needed
      f.input :website
      f.input :latitude
      f.input :longitude
    end
    f.inputs "Extra" do
      f.input :crops
      f.input :growing_season
      f.input :hours_of_operation
      f.input :type_of_farm
      f.input :size_in_acres
    end
    f.buttons
  end
end

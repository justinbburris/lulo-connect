ActiveAdmin.register Plant do
  form do |f|
    f.inputs "Basics" do
      f.input :name
      f.input :plant_type
    end
    f.inputs "Extra" do
      f.input :best_location
      f.input :watering
      f.input :plant_with
      f.input :dont_plant_with
      f.input :planting_instructions
      f.input :harvest_instructions
      f.input :pests

    end
    f.buttons
  end
end

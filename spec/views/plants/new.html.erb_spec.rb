# require 'rails_helper'

# RSpec.describe "plants/new", type: :view do
#   before(:each) do
#     assign(:plant, Plant.new(
#       specific_epithet: "MyString",
#       grex: "MyString",
#       infraspecies_unit: "MyString",
#       infraspecies_name: "MyString",
#       cultivar_group: "MyString",
#       cultivar: "MyString",
#       hybrid: "MyString",
#       water_reqts: "MyString",
#       landscape_uses: "MyText",
#       genus: nil
#     ))
#   end

#   it "renders new plant form" do
#     render

#     assert_select "form[action=?][method=?]", plants_path, "post" do

#       assert_select "input[name=?]", "plant[specific_epithet]"

#       assert_select "input[name=?]", "plant[grex]"

#       assert_select "input[name=?]", "plant[infraspecies_unit]"

#       assert_select "input[name=?]", "plant[infraspecies_name]"

#       assert_select "input[name=?]", "plant[cultivar_group]"

#       assert_select "input[name=?]", "plant[cultivar]"

#       assert_select "input[name=?]", "plant[hybrid]"

#       assert_select "input[name=?]", "plant[water_reqts]"

#       assert_select "textarea[name=?]", "plant[landscape_uses]"

#       assert_select "input[name=?]", "plant[genus_id]"
#     end
#   end
# end

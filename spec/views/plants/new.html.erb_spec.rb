require 'rails_helper'

RSpec.describe "plants/new", type: :view do
  before(:each) do
    assign(:plant, Plant.new(
      sci_name: "MyString",
      synonyms: "MyText",
      common_name: "MyText",
      family: "MyString",
      genus: "MyString",
      light_reqts: "MyText",
      water_reqts: "MyString",
      foliage_color: "MyText",
      flower_color: "MyText",
      landscape_uses: "MyText",
      native_distribution: "MyText",
      user: nil
    ))
  end

  it "renders new plant form" do
    render

    assert_select "form[action=?][method=?]", plants_path, "post" do

      assert_select "input[name=?]", "plant[sci_name]"

      assert_select "textarea[name=?]", "plant[synonyms]"

      assert_select "textarea[name=?]", "plant[common_name]"

      assert_select "input[name=?]", "plant[family]"

      assert_select "input[name=?]", "plant[genus]"

      assert_select "textarea[name=?]", "plant[light_reqts]"

      assert_select "input[name=?]", "plant[water_reqts]"

      assert_select "textarea[name=?]", "plant[foliage_color]"

      assert_select "textarea[name=?]", "plant[flower_color]"

      assert_select "textarea[name=?]", "plant[landscape_uses]"

      assert_select "textarea[name=?]", "plant[native_distribution]"

      assert_select "input[name=?]", "plant[user_id]"
    end
  end
end

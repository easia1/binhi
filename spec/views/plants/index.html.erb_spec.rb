require 'rails_helper'

RSpec.describe "plants/index", type: :view do
  before(:each) do
    assign(:plants, [
      Plant.create!(
        sci_name: "Sci Name",
        synonyms: "MyText",
        common_name: "MyText",
        family: "Family",
        genus: "Genus",
        light_reqts: "MyText",
        water_reqts: "Water Reqts",
        foliage_color: "MyText",
        flower_color: "MyText",
        landscape_uses: "MyText",
        native_distribution: "MyText",
        user: nil
      ),
      Plant.create!(
        sci_name: "Sci Name",
        synonyms: "MyText",
        common_name: "MyText",
        family: "Family",
        genus: "Genus",
        light_reqts: "MyText",
        water_reqts: "Water Reqts",
        foliage_color: "MyText",
        flower_color: "MyText",
        landscape_uses: "MyText",
        native_distribution: "MyText",
        user: nil
      )
    ])
  end

  it "renders a list of plants" do
    render
    assert_select "tr>td", text: "Sci Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Family".to_s, count: 2
    assert_select "tr>td", text: "Genus".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Water Reqts".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end

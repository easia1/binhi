require 'rails_helper'

RSpec.describe "plants/index", type: :view do
  before(:each) do
    assign(:plants, [
      Plant.create!(
        specific_epithet: "Specific Epithet",
        grex: "Grex",
        infraspecies_unit: "Infraspecies Unit",
        infraspecies_name: "Infraspecies Name",
        cultivar_group: "Cultivar Group",
        cultivar: "Cultivar",
        hybrid: "Hybrid",
        water_reqts: "Water Reqts",
        landscape_uses: "MyText",
        genus: nil
      ),
      Plant.create!(
        specific_epithet: "Specific Epithet",
        grex: "Grex",
        infraspecies_unit: "Infraspecies Unit",
        infraspecies_name: "Infraspecies Name",
        cultivar_group: "Cultivar Group",
        cultivar: "Cultivar",
        hybrid: "Hybrid",
        water_reqts: "Water Reqts",
        landscape_uses: "MyText",
        genus: nil
      )
    ])
  end

  it "renders a list of plants" do
    render
    assert_select "tr>td", text: "Specific Epithet".to_s, count: 2
    assert_select "tr>td", text: "Grex".to_s, count: 2
    assert_select "tr>td", text: "Infraspecies Unit".to_s, count: 2
    assert_select "tr>td", text: "Infraspecies Name".to_s, count: 2
    assert_select "tr>td", text: "Cultivar Group".to_s, count: 2
    assert_select "tr>td", text: "Cultivar".to_s, count: 2
    assert_select "tr>td", text: "Hybrid".to_s, count: 2
    assert_select "tr>td", text: "Water Reqts".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end

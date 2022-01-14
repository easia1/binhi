require 'rails_helper'

RSpec.describe "plants/show", type: :view do
  before(:each) do
    @plant = assign(:plant, Plant.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Specific Epithet/)
    expect(rendered).to match(/Grex/)
    expect(rendered).to match(/Infraspecies Unit/)
    expect(rendered).to match(/Infraspecies Name/)
    expect(rendered).to match(/Cultivar Group/)
    expect(rendered).to match(/Cultivar/)
    expect(rendered).to match(/Hybrid/)
    expect(rendered).to match(/Water Reqts/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end

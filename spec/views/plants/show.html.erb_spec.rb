require 'rails_helper'

RSpec.describe "plants/show", type: :view do
  before(:each) do
    @plant = assign(:plant, Plant.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Sci Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Family/)
    expect(rendered).to match(/Genus/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Water Reqts/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end

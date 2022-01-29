require 'rails_helper'

RSpec.describe Plant, type: :model do
  it 'should include the "specific_epithet" attribute' do
    expect(subject.attributes).to include("specific_epithet") 
  end
  
  it 'should include the "grex" attribute' do
    expect(subject.attributes).to include("grex") 
  end
  it 'should include the "infraspecies_unit" attribute' do
    expect(subject.attributes).to include("infraspecies_unit") 
  end
  it 'should include the "infraspecies_name" attribute' do
    expect(subject.attributes).to include("infraspecies_name") 
  end
  it 'should include the "cultivar_group" attribute' do
    expect(subject.attributes).to include("cultivar_group") 
  end
  it 'should include the "cultivar" attribute' do
    expect(subject.attributes).to include("cultivar") 
  end
  it 'should include the "hybrid" attribute' do
    expect(subject.attributes).to include("hybrid") 
  end
  it 'should include the "water_reqts" attribute' do
    expect(subject.attributes).to include("water_reqts") 
  end
  it 'should include the "landscape_uses" attribute' do
    expect(subject.attributes).to include("landscape_uses") 
  end
end

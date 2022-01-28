require 'rails_helper'

RSpec.describe Genus, type: :model do
  it 'should include the "name" attribute' do
    expect(subject.attributes).to include("name") 
  end
  
  it 'should include the "symbol" attribute' do
    expect(subject.attributes).to include("symbol") 
  end
end

require 'rails_helper'

RSpec.describe Family, type: :model do
  it 'should include the "name" attribute' do
    expect(subject.attributes).to include("name") 
  end
end

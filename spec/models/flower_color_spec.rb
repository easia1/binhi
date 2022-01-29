require 'rails_helper'

RSpec.describe FlowerColor, type: :model do
  it 'should include the "color" attribute' do
    expect(subject.attributes).to include("color") 
  end
end

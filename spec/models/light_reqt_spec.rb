require 'rails_helper'

RSpec.describe LightReqt, type: :model do
  it 'should include the "light_reqt" attribute' do
    expect(subject.attributes).to include("light_reqt") 
  end

end

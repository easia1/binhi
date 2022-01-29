require 'rails_helper'

RSpec.describe Image, type: :model do
  it 'should include the "caption" attribute' do
    expect(subject.attributes).to include("caption") 
  end
  
  it 'should include the "source" attribute' do
    expect(subject.attributes).to include("source") 
  end
  
  it 'should include the "file_path" attribute' do
    expect(subject.attributes).to include("file_path") 
  end

end

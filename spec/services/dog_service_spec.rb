require 'rails_helper'
describe DogService do
  it 'returns dog info in json' do
    service = DogService.new
    result = service.get_data

    expect(result[:status]).to eq('success')
    expect(result[:message].class).to eq(Array)
  end
  it 'extracts each dog image url' do
    service = DogService.new
    images = service.get_urls

    expect(images.class).to eq(Array)
  end
  it 'creates Poodle objects for db' do
    service = DogService.new
    images = service.create_poodles

    expect(images.class).to eq(Array)
    expect(images.first).to be_instance_of(Poodle)
  end
end

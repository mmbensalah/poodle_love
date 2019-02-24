require 'rails_helper'
describe DogService do
  it 'returns dog info in json' do
    service = DogService.new
    result = service.get_poodles
    expect(result[:status]).to eq('success')
    expect(result[:message].class).to eq(Array)
  end
end

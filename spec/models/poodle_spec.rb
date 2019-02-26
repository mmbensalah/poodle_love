require 'rails_helper'

describe 'Poodle' do
  it 'exists' do
    poodle = Poodle.create(url: "http://etc.com", ranking: 0)
    poodle_1 = Poodle.create(url: "http://etcetc.com", ranking: 1)

    expect(poodle.url).to eq("http://etc.com")
    expect(poodle.ranking).to eq(0)
    expect(poodle_1.url).to eq("http://etcetc.com")
    expect(poodle_1.ranking).to eq(1)
  end
end

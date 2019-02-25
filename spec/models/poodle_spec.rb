require 'rails_helper'

describe 'Poodle' do
  it 'exits' do
    poodle = Poodle.new("http://etc.com")
    poodle_1 = Poodle.new("http://etcetc.com", 1)

    expect(poodle.url).to eq("http://etc.com")
    expect(poodle.ranking).to eq(0)
    expect(poodle_1.url).to eq("http://etcetc.com")
    expect(poodle_1.ranking).to eq(1)
  end
end

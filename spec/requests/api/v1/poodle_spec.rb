require 'rails_helper'

describe 'the poodle endpoint' do
  it 'PATCH /poodles edits a poodles ranking' do
    poodle = Poodle.create(url: "https://poodlepic.jpg", ranking: 0)

    data = { id: poodle.id, ranking: 3 }

    patch "/api/v1/poodles", params: data

    expect(response.status).to eq 204
    expect(Poodle.last.ranking).to eq(3)
    expect(Poodle.last.id).to eq(poodle.id)
  end
end

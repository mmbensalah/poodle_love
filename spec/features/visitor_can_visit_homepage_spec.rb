require 'rails_helper'

RSpec.feature "Visit homepage" do
  scenario "Visitor navigates to homepage" do
    visit "/"

    expect(page).to have_text("Poodle Love")
  end
end

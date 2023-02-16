require 'rails_helper'

RSpec.describe 'merhcants index' do 
  it 'retrieves a list of merchants and each merchant links to their show page' do 
    visit merchants_path

    expect(page).to have_content('Merchants Index Page')
    within("#merchant-1") do
      expect(page).to have_link("Schroeder-Jerde")
    end

    click_on 'Schroeder-Jerde'
    expect(current_path).to eq(merchant_path(1))
  end
end
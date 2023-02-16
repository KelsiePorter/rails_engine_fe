require 'rails_helper'

RSpec.describe 'Merchants show' do 
  it 'displays a merchants items' do 
    visit merchant_path(1)

    expect(page).to have_content("Schroeder-Jerde's Show Page")
    within("#item-4") do 
      expect(page).to have_content("Item Nemo Facere")
      expect(page).to_not have_content("Item Provident At")
    end
  end
end
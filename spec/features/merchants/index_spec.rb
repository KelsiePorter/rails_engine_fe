require 'rails_helper'

RSpec.describe 'merhcants index' do 
  it 'retrieves a list of merhcants' do 
    visit merchants_path

    expect(page).to have_content('Merchants Index Page')
  end
end
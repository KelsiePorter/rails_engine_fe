require 'rails_helper'

RSpec.describe 'ItemFacade' do 
  it 'returns a collection of items that belong to a merchant' do 
    items = ItemFacade.items_data(1)

    expect(items).to be_an(Array)
    expect(items[0]).to be_an(Item)
  end
end
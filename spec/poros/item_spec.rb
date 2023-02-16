require 'rails_helper'

RSpec.describe 'Item' do 
  it 'has id and name attributes' do 
    items = ItemFacade.items_data(params[:id])

    items.each do |item|
      expect(item.name).to be_a(String)
      expect(item.id).to be_a(String)
      expect(item.description).to be_a(String)
      expect(item.unit_price).to be_a(Float)
      expect(item.merchant_id).to be_a(Integer)
    end
  end
end
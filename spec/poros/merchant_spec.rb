require 'rails_helper'

RSpec.describe 'Merchant' do 
  it 'has an id and name attribute' do 
    merchants_data = MerchantFacade.all_merchants_data

    expect(merchants_data).to be_an(Array)
    expect(merchants_data.size).to eq(100)

    merchants_data.each do |merchant|
      expect(merchant.name).to be_a(String)
      expect(merchant.id).to be_a(String)
    end
  end
end
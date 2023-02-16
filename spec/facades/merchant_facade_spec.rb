require 'rails_helper' 

RSpec.describe 'MerchantFacade' do 
  it 'returns a collection of merchant data' do
    merchants_data = MerchantFacade.all_merchants_data

    expect(merchants_data).to be_a(Array)
    expect(merchants_data[0]).to be_a(Merchant)
    expect(merchants_data.count).to eq(100)
  end

  it 'returns on merchants data' do 
    merchant_response = RailsEngineService.get_merchant(1)

    expect(merchant_response.count).to eq(1)
    expect(merchant_response).to be_a(Merchant)
  end
end
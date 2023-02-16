require 'rails_helper' 

RSpec.describe 'RailsEngineService' do 
  describe 'class methods' do 
    it 'returns all merchants data' do 
      merchants = RailsEngineService.get_all_merchants

      expect(merchants).to be_a(Hash)
      expect(merchants).to have_key(:data)
      expect(merchants[:data]).to be_a(Array)
      expect(merchants[:data][0]).to have_key(:id)
      expect(merchants[:data][0]).to have_key(:attributes)
      expect(merchants[:data][0][:attributes]).to have_key(:name)
    end

    it 'returns one merchant' do 
      merchant = RailsEngineService.get_merchant(1)

      expect(merchant).to be_a(Hash)
      expect(merchant).to have_key(:data)      
      expect(merchant[:data]).to have_key(:attributes)
      expect(merchant[:data]).to have_key(:id)
      expect(merchant[:data][:attributes]).to have_key(:name)
    end

    it 'returns a merchants items' do 
      items = RailsEngineService.get_merchant_items(1)

      expect(items).to be_a(Hash)
      expect(items).to have_key(:data)
      expect(items[:data]).to be_a(Array)
      expect(items[:data][0]).to have_key(:id)
      expect(items[:data][0]).to have_key(:attributes)
      expect(items[:data][0][:attributes]).to have_key(:name)
      expect(items[:data][0][:attributes]).to have_key(:description)
      expect(items[:data][0][:attributes]).to have_key(:unit_price)
    end
  end
end
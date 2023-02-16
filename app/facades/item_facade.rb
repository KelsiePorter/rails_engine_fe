class ItemFacade 
  def self.items_data(merchant_id)
    items_response = RailsEngineService.get_merchant_items(merchant_id)
    items_response[:data].map do |item_params|
      Item.new(item_params)
    end
  end
end
class RailsEngineService 

  def self.get_all_merchants 
    response = conn.get('merchants')
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_merchant(id)
    response = conn.get("merchants/#{id}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_merchant_items(id)
    response = conn.get("merchants/#{id}/items")
    JSON.parse(response.body, symbolize_names: true)
  end

  private 

  def self.conn 
    Faraday.new(url: 'http://localhost:3000/api/v1/')
  end
end
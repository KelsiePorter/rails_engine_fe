class Merchant 
  attr_reader :name,
              :id

  def initialize(merchant_params)
    @name = merchant_params[:attributes][:name]
    @id = merchant_params[:id]
  end
end
class Item
  attr_reader :id,
              :name

  def initialize(item_params)
    @id = item_params[:id]
    @name = item_params[:attributes][:name]
  end
end
class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end


  def add_item(item, price, quantity = 1)
    item_info = {}
    item_info[:name] = item
    item_info[:price] = price
    item_info[:quantity] = quantity

    @cart << item_info
  end


end

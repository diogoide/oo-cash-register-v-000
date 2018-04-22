class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity

  def initialize(discount = 0)
    @@total = 0
    @discount = discount
    @cart = []
  end


  def add_item(title, price, quantity = 1)
    item_info = {}
    item_info[:title] = title
    item_info[:price] = price
    item_info[:quantity] = quantity
    @@total += total + price
    @cart << item_info
  end


end

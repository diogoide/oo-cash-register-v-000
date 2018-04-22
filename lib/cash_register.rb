class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end


  def add_item(title, price, quantity = 1)
    item_info = {}
    item_info[:title] = title
    item_info[:price] = price
    item_info[:quantity] = quantity

    @cart << item_info
    @total += price * quantity
  end

  def apply_discount
    if @discount != 0
      @total -= @total * @discount /100
    else
      "There is no discount to apply"
    end
    puts "After the discount, the total comes to $#{@total}."
  end


end

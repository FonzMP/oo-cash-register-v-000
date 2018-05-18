
class CashRegister

  attr_accessor :discount, :total

  @@CART = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @total += price * quantity

    @@CART << title
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total = @total.to_f - (@total * (@discount.to_f / 100.to_f))
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items

  end

end

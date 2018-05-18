
class CashRegister

  attr_accessor :discount, :total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @total += price * quantity
  end

  def apply_discount
    if @discount == 0
      @total
    else
      @total = @total.to_f - (@total * (@discount.to_f / 100.to_f))
      return "Your total is @total"
    end
  end

end

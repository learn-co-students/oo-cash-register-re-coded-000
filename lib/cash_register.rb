
class CashRegister
  attr_accessor :total, :discount, :items, :last_trans
  def initialize(discount =0)
    @total = 0
    @items =[]
    @discount = discount
  end
  def add_item(title,price,quantity =1)
    @total = @total + price*quantity
    quantity.times do
      @items << title
    end
    @last_trans = price
  end
  def apply_discount
    if @discount > 0 then
      @total = @total - (@total*self.discount/100)
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end
  def void_last_transaction
    @total = @total - @last_trans
  end
end

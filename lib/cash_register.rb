
class CashRegister
  attr_accessor :new, :total, :discount, :items
  def initialize(discount=0)
    @total =0
    @discount =discount
    @items=[]
  end


  def add_item(title,price,quantity=1)
    self.total +=(price*quantity)
    quantity.times do
        @items << title
    end
  end

  def apply_discount
    if self.discount >0
      @total = @total- (@total*self.discount/100)
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total=0
  end
end


class CashRegister
  attr_accessor :items, :discount, :total, :last_transaction

  CashRegister=[]
  def initialize(discount=0)
    @total=0
    @discount=discount
    @items=[]
  end

    def add_item(title, amount, quantity=1)
      @total += amount * quantity
      quantity.times do
        items << title
      end
      self.last_transaction = amount * quantity
    end
def apply_discount
   if @discount!=0
   @total= @total-(@total*@discount.to_f/100.0).to_i
   "After the discount, the total comes to $800."
   else
     "There is no discount to apply."
   end
 end
 def items
     @items
   end
 def void_last_transaction
   @total = @total - @last_transaction
 end
end

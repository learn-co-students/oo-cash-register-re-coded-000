class CashRegister

#attr_accessor :cash_register , :cash_register_with_discount
attr_accessor :total , :discount ,:items ,:last_transaction

def initialize(discount=0)
  @total=0
  @discount=discount
  @items=[]

end
def add_item(title,price,quantity=1)
  self.last_transaction = price*quantity
  quantity.times do
    self.items.push(title)
  end
   @total = @total + price*quantity
end
def void_last_transaction
  self.total = self.total - self.last_transaction
end
def apply_discount
  if @discount > 0
   self.total = self.total - (self.total * discount / 100)
    return "After the discount, the total comes to $#{self.total}."
  else
    return "There is no discount to apply."
end
end

end

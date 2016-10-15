
class CashRegister

#attr_accessor :cash_register , :cash_register_with_discount
attr_accessor :total , :discount
attr_reader :items
def initialize(discount=20)
  @total=0
  @discount=discount
  @items={}

end
def add_item(title,price,quantity=1)
   items[title]=price
   total =(total + price*quantity)
end


end

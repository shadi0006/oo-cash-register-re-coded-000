class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction
  def initialize(discount=0)
    @total = 0
    @discount=discount
    @items=[]
  end
  def add_item(title,price,quantity=1)
    self.total+=price*quantity
    quantity.times do
      @items << title
    end
    @last_transaction = price
  end
  def apply_discount
    if self.discount > 0
    self.total-=(self.last_transaction*self.discount/100)
    return "After the discount, the total comes to $#{self.total}."
  else
    return "There is no discount to apply."
end
end
def void_last_transaction
  self.total-=self.last_transaction
end
end

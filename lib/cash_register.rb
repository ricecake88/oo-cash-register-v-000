require 'pry'
class CashRegister
  
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @list_of_items = []
  end
  
  def add_item(title, price, quantity = 1)
    self.total += (price)*quantity
    quantity.times do 
      @list_of_items << title
    end
  end
  
  def apply_discount
    if self.discount != 0
      self.total = self.total - self.total * (self.discount/100.0)
      message = "After the discount, the total comes to $#{self.total.to_i}."
    else
      message = "There is no discount to apply."
    end
    return message
  end
  
  def items
    @list_of_items
  end
end
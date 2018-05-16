require 'pry'
class CashRegister
  
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    list_of_items = []
  end
  
  def add_item(title, price, quantity = 1)
    self.total += (price)*quantity
    self.list_of_items << title
  end
  
  def apply_discount
   # binding.pry
    if self.discount != 0
      self.total = self.total - self.total * (self.discount/100.0)
      puts "After the discount, the total comes to $#{self.total.to_i}."
    else
      puts "There is no discount to apply."
    end
  end
end
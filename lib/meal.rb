class Meal
  
  attr_accessor :waiter, :customer, :total, :tip
  
  @@all = []
  
  def initialize(waiter, customer, total, tip = 0)
    @@all << self
    self.waiter = waiter
    self.customer = customer
    self.total = total
    self.tip = tip
  end
  
  def self.all
    @@all
  end
  
end
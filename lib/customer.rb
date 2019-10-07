class Customer
    
  attr_accessor :name, :age
  
  @@all = []
  
  def initialize(name, age)
    @@all << self
    self.name = name
    self.age = age
  end
  
  def self.all
    @@all
  end
  
  def new_meal(waiter, total, tip)
    Meal.new(waiter, self, total, tip)
  end
  
  def meals
    Meal.all.select { |food| food.customer == self }
  end
  
  def waiters
    self.meals.map { |food| food.waiter }
  end
  
end
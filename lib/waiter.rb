class Waiter
  
  attr_accessor :name, :experience
  
  @@all = []
  
  def initialize(name, experience)
    @@all << self
    self.name = name
    self.experience = experience
  end
  
  def self.all
    @@all
  end
  
  def new_meal(customer, total, tip)
    Meal.new(self, customer, total, tip)
  end
  
  def meals
    Meal.all.select { |food| food.waiter == self }
  end
  
  def best_tipper
    gratuity = self.meals.sort { |a, b| a.tip <=> b.tip }
    gratuity[-1].customer
  end
  
end
class Customer
 
 attr_accessor :name, :age
 
  @@all = []
 
  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end
 
  def self.all
    @@all
  end
 
end 

def meals
  Meal.all.select do |meal|
    meal.customer == self
  end
end

def waiters
  meals.map do |meal|
    meal.waiter
  end
end

terrance = Customer.new("Terrance", 27)
jason = Waiter.new("Jason", 4)
andrew = Waiter.new("Andrew", 7)
yomi = Waiter.new("Yomi", 10)
 


require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

owner1 = CarOwner.new("Bob")
owner2 = CarOwner.new("Jill")

car1 = Car.new("Toyota", "Hybrid", "exotic")
car2 = Car.new("Honda", "Hybrid", "exotic")
car3 = Car.new("Ford", "Gasoline", "clunker")

mechanic1 = Mechanic.new("Joe", "exotic", owner1, car1)
mechanic2 = Mechanic.new("John", "exotic", owner2, car2)
mechanic3 = Mechanic.new("Jim", "clunker", owner2, car3)

binding.pry

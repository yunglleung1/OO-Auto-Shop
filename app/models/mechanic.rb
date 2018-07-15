class Mechanic
  @@all = []

  attr_reader :name, :specialty, :car_owner, :car

  def initialize(name, specialty, car_owner, car)
    @name = name
    @specialty = specialty #each mechanic has a specialization ("antique", "exotic", or "clunker")
    @car_owner = car_owner
    @car = car
    @@all << self
  end

  def self.all # Get a list of all mechanics
    @@all
  end

  def all_mechanic_cars #Get a list of all cars that a mechanic services
    cars = Mechanic.all.map do |mechanic|
      if mechanic.car == self.car
        mechanic.car
      end
    end
    cars.compact
  end

  def car_owners# Get a list of all the car owners that go to a specific mechanic
    car_owners = Mechanic.all.map do |mechanic|
      if mechanic.car_owner == self.car_owner
        mechanic.car_owner
      end
    end
    car_owners.compact
  end

  def car_owner_names#Get a list of the names of all car owners who go to a specific mechanic
    self.car_owners.map do |owner|
      owner.name
    end
  end
end

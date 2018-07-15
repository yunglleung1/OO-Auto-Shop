class CarOwner
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all #Get a list of all owners
    @@all
  end

  def owner_mechanics # Get a list of all the mechanics that a specific owner goes to
    mechanics = Mechanic.all.map do |mechanic|
      if mechanic.car_owner == self
        mechanic
      end
    end
    mechanics.compact
  end

  def owner_cars # Get a list of all the cars that a specific owner has
    self.owner_mechanics.map do |mechanic|
      mechanic.car
    end
  end

  def self.average_cars_owned_all_owners  #Get the average amount of cars owned for all owners
    number_of_owners = all.length
    number_of_cars = Car.all.length
    average = (number_of_cars.to_f / number_of_owners.to_f)
  end
end

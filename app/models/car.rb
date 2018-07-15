class Car
  @@all = []

  attr_reader :make, :model, :classification

  def initialize(make, model, classification)
    @make = make
    @model = model
    @classification = classification #classification, like "antique", "exotic", or "clunker"
    @@all << self
  end

  def self.all # Get a list of all cars
    @@all
  end

  def self.classifications # Get a list of all car classifications
    all.map do |car|
      car.classification
    end
  end

  def mechanics_expertise# Get a list of mechanics that have an expertise that matches the car classification
    Mechanic.all.select do |mechanic|
      mechanic.specialty == self.classification
    end
  end
end

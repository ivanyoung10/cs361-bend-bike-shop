class Rental

  attr_reader :bike, :luggage

  def initialize(bike)
    @bike = bike
  end

  def price
    self.bike.price + (2 * self.bike.weight) + (2 * self.luggage.weight)
  end

  def weight
    self.bike.weight + self.bike.luggage.items.count
  end

end

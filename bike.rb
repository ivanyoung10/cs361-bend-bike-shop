
class Bike

  STANDARD_WEIGHT = 200 # lbs

  attr_accessor :id, :color, :price, :weight, :rented, :cargo_contents

  def initialize(id, color, price, weight = STANDARD_WEIGHT, rented = false)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
  end

  def rent!
    self.rented = true
  end
  
end

class Panier
  attr_accessor :cargo_contents
  MAX_CARGO_ITEMS = 10
  def initialize
    @cargo_contents = []
  end

  def pannier_capacity
    MAX_CARGO_ITEMS
  end

  def pannier_remaining_capacity
    MAX_CARGO_ITEMS - self.cargo_contents.size
  end

end

class Cargo
  attr_accessor :cargo_contents
  def add_cargo(item)
    self.cargo_contents << item
  end

  def remove_cargo(item)
      self.cargo_contents.remove(item)
  end

end 
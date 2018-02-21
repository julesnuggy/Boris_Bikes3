class DockingStation

  def release_bike
    @bike = Bike.new
  end

  def dock(bike)
    bike.dock
  end

end

class Bike
  attr_reader :docked

  def initialize
    @docked = "undocked"
  end

  def dock
    @docked = "docked"
  end

  def working?
    true
  end
end

class DockingStation

  def release_bike
    @bike = Bike.new('undocked')

  end

  def dock(bike)
    bike.dock
  end
  
end

class Bike
  def initialize(docked)
    @docked = docked
  end

  def dock
    @docked = "docked"
  end

  def docked?
    @docked
  end

  def working?
    true
  end
end

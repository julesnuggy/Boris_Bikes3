class DockingStation
=begin
  def intitalize
    @bikes = []
  end
=end

  def release_bike
    Bike.new
  end
=begin
  def dock(bike)
    @bikes.push(bike)
  end
=end
end

class Bike
  def working?
  end
end

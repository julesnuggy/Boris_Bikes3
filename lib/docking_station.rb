class DockingStation
=begin
  def intitalize
    @bike_rack = []
  end
=end

  def release_bike
    @bike = Bike.new
  end
=begin
  def dock(bike)
    @bike_rack.push(bike)
  end

  def read_dock
    @bike_rack
  end

=end
end

class Bike
  def working?
    true
  end
end

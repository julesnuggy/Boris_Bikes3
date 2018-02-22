class DockingStation
  attr_reader :bikes_in_station

  DEFAULT_CAPACITY = 20

  def initialize
    @bikes_in_station = []
    DEFAULT_CAPACITY.times{@bikes_in_station << Bike.new}
  end

  def release_bike
    fail "No bikes at this station" if @bikes_in_station.empty?
      @bikes_in_station.last.release
      @bikes_in_station.pop
  end

  def dock(bike)
    fail "The station is full" if full?
      @bikes_in_station.push(bike)
      bike.dock
  end

  private
  def full?
    if @bikes_in_station.length >= DEFAULT_CAPACITY
      true
    else
      false
    end
  end

end


class Bike
  attr_reader :dock_status

  def initialize
    @dock_status = "docked"
  end

  def dock
    @dock_status = "docked"
  end

  def release
    @dock_status = "undocked"
  end

  def working?
    true
  end
end

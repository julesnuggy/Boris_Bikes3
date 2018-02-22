class DockingStation
  attr_reader :bikes_in_station, :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes_in_station = []
    @capacity = capacity
    @capacity.times{@bikes_in_station << Bike.new}
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
    if @bikes_in_station.length >= @capacity
      true
    else
      false
    end
  end

end


class Bike
  attr_reader :dock_status
  attr_accessor :working

  def initialize
    @dock_status = "docked"
    @working = true
  end

  def dock
    @dock_status = "docked"
  end

  def release
    @dock_status = "undocked"
  end

  def report
    @working = false
  end
  
end

class DockingStation
  attr_reader :bikes_in_station, :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes_in_station = []
    @capacity = capacity
    @capacity.times{@bikes_in_station << Bike.new}
  end

  def release_bike(idx)
    fail "No bikes at this station" if @bikes_in_station.count(nil) == DEFAULT_CAPACITY
    fail "No bike here" if @bikes_in_station[idx] == nil
    fail "Bike is broken" if @bikes_in_station[idx].working == false
      released_bike = @bikes_in_station[idx]
      released_bike.release
      @bikes_in_station[idx] = nil
      released_bike
  end

  def dock(bike, idx)
    fail "The station is full" if full?
    fail "Dock is occupied" if @bikes_in_station[idx] != nil
      @bikes_in_station[idx] = bike
      bike.dock
  end

  def view_spaces
    empty_spaces = []
    @bikes_in_station.each_with_index { |val, index|
      empty_spaces.push(index) if val == nil
    }
    p "Empty spaces found at #{empty_spaces}"
  end

  def view_working
    working_bikes = []
    @bikes_in_station.each_with_index { |val, index|
      if val != nil
        working_bikes.push(index) if val.working
      end
    }
    p "Working bikes found at #{working_bikes}"
  end


  def view_broken
    broken_bikes = []
    @bikes_in_station.each_with_index { |val, index|
      if val != nil
        broken_bikes.push(index) if !val.working
      end
    }
    p "Broken bikes found at #{broken_bikes}"
  end

  private
  def full?
    if @bikes_in_station.include?(nil)
      false
    else
      true
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


class Van

end

class Garage
end

class DockingStation
  attr_reader :bikes_in_station

  def initialize
    @bikes_in_station = []
    20.times{@bikes_in_station << Bike.new}
  end

  def release_bike
      if !@bikes_in_station.empty?
        @bikes_in_station.last.release
        @bikes_in_station.pop
      else
        begin
          raise ArgumentError.new("No bikes at this station")
        rescue ArgumentError => e
          p e.message
        end
      end
  end

  def dock(bike)
    if @bikes_in_station.length < 20
      @bikes_in_station.push(bike)
      bike.dock
    else
      begin
        raise ArgumentError.new("The station is full")
      rescue ArgumentError => e
        p e.message
      end
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

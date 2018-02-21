class DockingStation
  attr_reader :bike_available

  def initialize
    @capacity = 20
  end

  def release_bike
      if @capacity > 0
        @capacity -= 1
        @bike = Bike.new
      else
        begin
          raise ArgumentError.new("No bikes at this station")
        rescue ArgumentError => e
          puts e.message
          exit
        end
      end
  end

  def dock(bike)
    if @capacity < 20
      @capacity += 1
      bike.dock
    else
      begin
        raise ArgumentError.new("The station is full")
      rescue ArgumentError => e
        puts e.message
        exit
      end
    end
  end

end

class Bike
  attr_reader :dock_status

  def initialize
    @dock_status = "undocked"
  end

  def dock
    @dock_status = "docked"
  end

  def working?
    true
  end
end

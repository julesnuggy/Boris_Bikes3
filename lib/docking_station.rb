class DockingStation
  attr_reader :bike_available

  def initialize
    @bike_available = true
  end

  def release_bike
    error = "No bikes at this station"

      if @bike_available == true
        @bike_available = false
        @bike = Bike.new
      else
        begin
          raise ArgumentError.new(error)
        rescue ArgumentError => e
          puts e.message
          exit
        end
      end
  end

  def dock(bike)
    bike.dock
    @bike_available = true
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

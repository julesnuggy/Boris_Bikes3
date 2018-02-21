require "./lib/docking_station.rb"

puts "---------------------------------"
puts "--------------START--------------"
puts "---------------------------------"

def dock_test
  station = DockingStation.new

  p "release bike1"
  bike1 = station.release_bike
  p "bike1 (#{bike1.object_id}) is now #{bike1.dock_status}"
  puts "\n"

  p "release bike2"
  bike2 = station.release_bike
  p "bike2 (#{bike2.object_id}) is now #{bike2.dock_status}"
  puts "\n"

  p "dock bike1"
  station.dock(bike1)
  p "bike1 Status: #{bike1.dock_status}"
  p "bike2 Status: #{bike2.dock_status}"
  puts "\n"

  p "dock bike2"
  station.dock(bike2)
  p "bike1 Status: #{bike1.dock_status}"
  p "bike2 Status: #{bike2.dock_status}"
end

def error_test
  station = DockingStation.new
  21.times {
    p station.capacity
    station.release_bike
    }


end
error_test

puts "---------------------------------"
puts "--------------END----------------"
puts "---------------------------------"

# call tests here

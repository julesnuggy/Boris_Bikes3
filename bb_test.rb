require "./lib/docking_station.rb"

puts "---------------------------------"
puts "--------------START--------------"
puts "---------------------------------"

station = DockingStation.new

p "release bike1"
bike1 = station.release_bike
p "bike1 (#{bike1.object_id}) is now #{bike1.docked}"
puts "\n"

p "release bike2"
bike2 = station.release_bike
p "bike2 (#{bike2.object_id}) is now #{bike2.docked}"
puts "\n"

p "dock bike1"
station.dock(bike1)
p "bike1 Status: #{bike1.docked}"
p "bike2 Status: #{bike2.docked}"
puts "\n"

p "dock bike2"
station.dock(bike2)
p "bike1 Status: #{bike1.docked}"
p "bike2 Status: #{bike2.docked}"

puts "---------------------------------"
puts "--------------END----------------"
puts "---------------------------------"

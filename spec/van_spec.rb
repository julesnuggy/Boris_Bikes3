require 'docking_station'

describe Van do
  describe "Van can take broken bikes from docking stations" do
    # let(:station) { double :station }
    # let(:bike) { double :bike }

    # allow(station).to receive(release_bike).and_return(???)
    # allow(bike).to receive()

    it "broken bikes removed from docking station" do
      station = DockingStation.new
      bike1 = station.release_bike(1)
      bike1.report
      staion.dock(bike1, 1)
      bike2 = station.release_bike(2)
      bike2.report
      staion.dock(bike2, 2)
      van = Van.new
      van.collect_bikes(station)
      expect(station.view_broken.empty?).to be_truthy
    end

    it "broken bikes in van" do
      station = DockingStation.new
      bike1 = station.release_bike(1)
      bike1.report
      staion.dock(bike1, 1)
      bike2 = station.release_bike(2)
      bike2.report
      staion.dock(bike2, 2)
      van = Van.new
      van.collect_bikes(station)
      expect(van.bikes).to include(bike1,bike2)
    end
  end

  # describe "vans deliver broken bikes to garages" do
  #   it "" do
  #   end
  # end
end

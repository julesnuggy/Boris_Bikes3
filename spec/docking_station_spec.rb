require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it { expect(@bike).to be_a Bike }
  it { expect(@bike.working?).to eq true }
end

# a) gets a Bike
# b) expects the bike to be working

require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it { expect(subject.release_bike).to be_a Bike }
  it { expect(subject.release_bike.working?).to eq true }
  it { is_expected.to respond_to :dock }

  it "raises an errror when no bike available" do
    expect {
      subject.release_bike
      subject.release_bike
    }.to raise_error
  end

end

# a) gets a Bike
# b) expects the bike to be working

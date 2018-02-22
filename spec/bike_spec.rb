require 'docking_station'

describe Bike do
  it { is_expected.to respond_to :working }
  it { is_expected.to respond_to :report }

  it "expects a new bike to be working" do
    expect(Bike.new.working).to be_truthy
  end

#  describe "allows a user to report a broken bike" do
#    bike = Bike.new
#    bike.report
#    it { expect(bike.working).to be_falsey }
#  end

#  it "allows a user to report a broken bike" do
#    expect { Bike.new.report }.to change { Bike.new.working }.from(true).to(false)
#  end

end

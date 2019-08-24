require_relative "../lib/plane"

describe Plane do
  it 'can land' do
    expect(subject).to respond_to(:land).with(1).argument
  end
# refactor the below
  it 'can land at an airport' do
    airport = Airport.new
    expect(subject.land(airport)).to eq airport.receive_plane(self)
  end

  describe '#take_off' do
    it 'plane responds to take_off' do
      expect(subject).to respond_to(:take_off)
    end
  end
end

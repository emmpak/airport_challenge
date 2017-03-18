require 'airport'

describe Airport do
  describe '#land' do
    it { is_expected.to respond_to(:land).with(1).argument }
    it 'lands the plane' do
      plane = Plane.new
      expect(subject.land(plane)).to eq plane
    end
  end

  describe '#plane' do
    it { is_expected.to respond_to(:plane) }
    it 'returns the landed plane' do
      plane = Plane.new
      subject.land(plane)
      expect(subject.plane).to eq plane
    end
  end

  describe '#take_off' do
    it { is_expected.to respond_to(:take_off) }
    it 'instruct a landed plane to take_off' do
      plane = Plane.new
      subject.land(plane)
      expect(subject.take_off).to eq plane
    end
  end

end

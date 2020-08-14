require 'journey'

describe Journey do
  
  it 'creates an instance of Journey' do
    expect(subject).to be_an_instance_of Journey
  end

  it 'initializes with an empty list of journeys' do
    expect(subject.journeys).to be_empty
  end


  #it 'starts a journey' do
    #oyster = Card.new
   # expect(subject.journey_start(entry_station)).to eq true
  #end

  it { respond_to(:start).with(1).argument }

  describe '#start' do
     let(:entry_station) { double :entry_station }
    it 'will add the entry station to the hash' do
      subject.start(entry_station)
      expect(subject.journeys).to include(:entry_station => entry_station)
    end
  end
  # let(:journey)  { {entry_station: entry_station, exit_station: exit_station } }

  #   it 'stores a journey' do
  #     subject.journey_start(entry_station)
  #     subject.journey_end(exit_station)
  #     expect(subject.journeys).to include journey
  #   end
end
require 'journey'

describe Journey do
  
  it 'creates an instance of Journey' do
    expect(subject).to be_an_instance_of Journey
  end

  it 'initializes with an empty list of journeys' do
    expect(subject.journeys).to be_empty
  end


  it 'starts a journey' do
    #oyster = Card.new
    expect(subject.journey_start(entry_station)).to eq true
  end
  # let(:journey)  { {entry_station: entry_station, exit_station: exit_station } }

  #   it 'stores a journey' do
  #     subject.journey_start(entry_station)
  #     subject.journey_end(exit_station)
  #     expect(subject.journeys).to include journey
  #   end
end
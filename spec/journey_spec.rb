require 'journey'

describe Journey do
  
  it 'creates an instance of Journey' do
    expect(subject).to be_an_instance_of Journey
  end

  it 'initializes with an empty list of journeys' do
    expect(subject.journeys).to be_empty
  end


  # let(:journey) { {entry_station: entry_station, exit_station: exit_station } }

  #   it 'stores a journey' do
  #     subject.touch_in(entry_station)
  #     subject.touch_out(exit_station)
  #     expect(subject.journeys).to include journey
  #   end
end
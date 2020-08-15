require 'journey'

describe Journey do
  
   let(:entry_station) { double :entry_station }
   let(:exit_station) { double :exit_station }



  it 'creates an instance of Journey' do
    expect(subject).to be_an_instance_of Journey
  end

  it 'initializes with an empty list of journeys' do
    expect(subject.journeys).to be_empty
  end

    describe '#start' do

     it { respond_to(:start).with(1).argument }
     
     it 'will add the entry station to the journey log' do
      subject.start(entry_station)
      expect(subject.journeys).to include(:entry_station => entry_station)
    end
  end
  


  describe '#finish' do

    it { respond_to(:finish).with(1).argument }

    it 'wii add the exit station to the journey log' do
      
      subject.start(entry_station) 
      subject.finish(exit_station)
      expect(subject.journeys).to include(:entry_station => entry_station, :exit_station => exit_station)
    end
  end

  describe '#fare' do

    it 'responds to the method fare' do
      expect(subject).to respond_to :fare
    end

    it 'should return the mininimum fare' do
      subject.start(entry_station)
      subject.finish(exit_station)
      expect(subject.fare).to eq Card::MINIMUM_FARE
    end

    it 'should return the penalty fare' do
      subject.start(entry_station)
      subject.finish
      subject.fare
      expect(subject.fare).to eq Journey::PENALTY_FARE
    end


  end


  
end






# let(:journey)  { {entry_station: entry_station, exit_station: exit_station } }

  #   it 'stores a journey' do
  #     subject.journey_start(entry_station)
  #     subject.journey_end(exit_station)
  #     expect(subject.journeys).to include journey
  #   end
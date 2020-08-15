class Journey

PENALTY_FARE = 6

attr_reader :journeys

  def initialize
    @journeys = {}
    
  end

  def start(entry_station = nil)
    @journeys[:entry_station] = entry_station
  end

  def finish(exit_station = nil)
    @journeys[:exit_station] = exit_station
  end

  def fare
    if journey_complete?
      Card::MINIMUM_FARE
    else
      PENALTY_FARE
    end
  end

private

def journey_complete?
  @journeys.values_at(:entry_station, :exit_station).all?
end

end
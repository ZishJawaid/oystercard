class Journey

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
    if @journeys.values_at(:entry_station, :exit_station).all?
      Card::MINIMUM_FARE
    else
      6
    end
  end

end
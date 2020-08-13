class Journey

attr_reader :journeys, :start

  def initialize
    @journeys = []
    @start
  end

 def journey_start(entry_station = "entry_station")
  @start = true
 end
# @journeys[:entry_station] = entry_station

# @journeys[:exit_station] = exit_station 

end
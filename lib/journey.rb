class Journey

attr_reader :journeys

  def initialize
    @journeys = {}
    @start
  end

 def start(entry_station = "entry_station")
 @journeys[:entry_station] = entry_station
 p @journeys
 end
# @journeys[:exit_station] = exit_station 

end
class Card

  attr_accessor :balance, :journeys
  
  MAXIMUM_BALANCE = 90
  MINIMUM_FARE = 1

  def initialize
    @balance = 0
    @journeys ={}
  end

  def top_up(amount)
    raise "Cannot top up: Maximum balance of £#{MAXIMUM_BALANCE} exceeded" if @balance + amount > MAXIMUM_BALANCE
    @balance += amount
  end

  def touch_in(entry_station)
    raise "insufficient funds on card" if @balance < MINIMUM_FARE
    @journeys[:entry_station] = entry_station 
  end

  def touch_out(exit_station)
    deduct(MINIMUM_FARE)
    @journeys[:exit_station] = exit_station 
  end

  
private

  def deduct(amount)
    @balance -= amount
  end

end
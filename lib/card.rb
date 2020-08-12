class Card

  attr_reader :balance

  MAXIMUM_BALANCE = 90

  def initialize

    @balance = 0

  end

  def top_up(amount)
    raise "Cannot top up: Maximum balance of £#{MAXIMUM_BALANCE} exceeded" if @balance + amount > MAXIMUM_BALANCE
    @balance += amount
  end

  def deduct(amount)

    @balance -= amount

  end
end
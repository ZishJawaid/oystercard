require 'card'

describe Card do

  it 'expects a card to have an initial balance of zero' do
    expect(subject.balance).to eq(0)
  end

  describe '#top_up' do
    it  'is expected to respond to top_up with 1 argument' do
      expect(subject).to respond_to(:top_up).with(1).argument
    end

    it 'tops up the balance' do
      expect {subject.top_up(1)}.to change {subject.balance}.by (1)
    end

    it 'raises an error if the maxiumum balance is exceeded' do
      max_balance = Card::MAXIMUM_BALANCE
      subject.top_up(max_balance)
      expect {subject.top_up(1)}.to raise_error "Cannot top up: Maximum balance of £#{max_balance} exceeded"
    end
end
  
  describe '#deduct' do

    it 'is expected to respond to deduct with 1 argument' do
      expect(subject).to respond_to(:deduct).with(1).argument
    end

    it 'deducts from the balance' do
      subject.top_up(90)
      expect {subject.deduct(1)}.to change {subject.balance}.by (-1)
    end

  end

end
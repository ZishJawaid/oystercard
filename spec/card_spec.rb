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

    it 'sets a maxiumum top up limit of £90' do
      expect {subject.top_up(91)}.to raise_error "Cannot top up: Maximum limit is £90"
    end
  end

end
require 'card'

describe Card do

  it 'allows a card to have a balance' do
    expect(subject).to respond_to :balance
  end

end
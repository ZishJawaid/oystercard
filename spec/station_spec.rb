require 'station'

describe Station do 

  it 'expects station to have a name' do
    expect(subject.name).to eq("Chelsmford")
  end
  
  it 'expects station to have a zone' do
    expect(subject.zone).to eq(6)
  end
end
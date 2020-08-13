require 'station'

describe Station do 

  subject {described_class.new(name: "Chelmsford", zone: 6)}

   it 'expects station to have a name' do
     expect(subject.name).to eq("Chelmsford") 
   end

   it 'expects station to have a name' do
     expect(subject.zone).to eq(6) 
   end
   
end

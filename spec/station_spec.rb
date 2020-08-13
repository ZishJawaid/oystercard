require 'station'

describe Station do 

  let(:station) {Station.new("station_name", "zone")}

   it 'expects station to have a name' do
     expect(station.name).to eq("station_name") 
   end

   it 'expects station to have a zone' do
     expect(station.zone).to eq("zone") 
   end
   
end

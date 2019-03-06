require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }
end

describe DockingStation do 
	it 'releases a working bike' do 
		bike = Bike.new
	expect(subject.release_bike) == bike
	expect(bike.working?).to eq true 
    # expect(bike).to be_working
	end 
end 

describe DockingStation do 
	it 'docks a bike at docking station, ' do 
		expect(subject).to respond_to(:docking).with(1).argument
	end 

	it 'responds to bike' do 
		is_expected.to respond_to(:bike)
	end 

	it 'docks something' do 
		bike= Bike.new
		expect(subject.docking(bike)).to eq bike 
	end 

	it 'returns docked bikes' do
		bike = Bike.new
		subject.docking(bike)
		expect(subject.bike).to eq bike
	end 

end 
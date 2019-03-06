require 'docking_station'

describe DockingStation do
  	it { is_expected.to respond_to(:release_bike) }


	# it 'releases a working bike' do 
	# # 	bike = Bike.new
	# # expect(subject.release_bike) == bike
	# # expect(bike.working?).to eq true 
 #    # expect(bike).to be_working
	# end 
 
 #the test above was removed and the nested 'describe '#release bike'' test was added.
 # we assumed the docking station starts empty (without any bikes).



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


	describe '#release_bike' do
		it 'raises an error when docking station empty' do 
			# subject.bike = nil 
			expect { subject.release_bike }.to raise_error("No available bikes")	
		end 
	end
end 
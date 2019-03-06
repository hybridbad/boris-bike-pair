class DockingStation
	attr_reader :bikes

	def initialize
		@bikes = []
	end 

  	def release_bike
  	# if @bike != nil   
	fail 'No available bikes' if @bikes.empty?
	@bikes.pop
	#releases the first bike


  	end

  def docking(bike)

  fail 'Docking station full' if @bikes.count >= 20
  
  	@bikes << bike
  	  
  end




end

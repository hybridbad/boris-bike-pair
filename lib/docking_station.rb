class DockingStation
	attr_reader :bike

  def release_bike
  	# if @bike != nil   
	fail 'No available bikes' unless @bike
	@bike



  end

  def docking(bike)
  	@bike = bike
  end




end

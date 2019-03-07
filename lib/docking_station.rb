require './lib/bike.rb'

class DockingStation
	attr_reader :docked, :capacity

	def initialize(capacity = 20)
		@docked = []
		@capacity = capacity
	end

  	def release_bike
  	# if @bike != nil
	fail 'No available bikes' if @docked.empty?
	@docked.pop
	#releases the first bike
  	end

  def docking(bike)
    fail 'Docking station full' if full?
  	@docked << bike
  end


	def full?
		@docked.count >= capacity
	end

	def empty?
		@docked.empty?
	end

end

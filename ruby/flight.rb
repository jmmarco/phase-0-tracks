# Bird Class
class Bird
	inlcude Flight
end

# Plane Class
class Plane
	include Flight
end

module Flight
	def take_off(altitude)
		puts "Taking off and ascending until reaching #{altitude} ..."
	end
end


# Driver code
bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)
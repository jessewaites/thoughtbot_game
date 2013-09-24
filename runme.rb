require_relative 'art'

class Game
	include Art
	def initalize(name)
		@player = name.capitalize
		
	end

	def points
		score = 0
	end
		
	def redline
		puts "You get on the red line at Park Street."
		puts "Do you head towards Harvard Square or the Innovation District?"
		reply = gets.chomp.downcase
		case reply
		when "harvard square", "harvard sq.", "harvard sq"
			puts "You get on the Alewife train and feel a vibration"
			puts "in your pocket. Do you check it or keep riding?"
			U.rider			
			STDIN.gets
            U.zombie         
            STDIN.gets
            
		else
			puts "test"	
		end		      
	end

	def harvard_square
		puts "it worked"
	end	
end

U = Game.new

U.redline



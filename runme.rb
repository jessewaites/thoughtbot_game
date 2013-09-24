require_relative 'art'

class Game
	include Art
	def initalize(name)
		@player = name.capitalize
		
	end

	def clear_screen
       print "\e[2J\e[f"
    end

	def intro
		beacon_hill
		STDIN.gets
		self.redline
	end	
		
	def redline
		puts "You manage to avoid the rioting mobs and make it to the subway."
		puts "Things are looking pretty grim out there. You begin to wonder"
		puts "if you've made the right decision. Maybe you should start gathering"
		puts "food and water and other emergency supplies? Suddenly the train arrives."
		puts U.subwaycar
		puts "Do you head continue to 'MIT' or 'flee' to the countryside and ride this out?"
		prompt; reply = gets.chomp.downcase
			case reply
			when "mit", "m.i.t.", "m.i.t"
				self.clear_screen
				puts "You board the empty but operation train and wonder who is driving it"
				U.rider
				STDIN.gets
				U.alien1
		    when "flee"		    	
		    	zombie 
        	else
				redline	
		    end	
	end

	def mit_or_quit
		puts "Sounds like a dangerous situation you've found yourself in."
		puts "Enter 'MIT' to begin your mission, or 'Quit' to quit your job" 
		puts "and pursue your lifelong dream of opening a Chipotle franchise."
		prompt; fork1 = gets.chomp.downcase
			case fork1
			when 'm.i.t', 'm.i.t.', 'mit'
			U.redline
			when 'Quit', 'QUIT', 'quit'
			puts "The tansdimensional beings are successful in thier" 
			puts "takeover of Earth. Humanity is reduced to mining the" 
			puts "planet for resources. Word of your cowardice gets out"
			puts "and you die poor and alone."
			STDIN.gets
			BREAK
			else
			puts "Enter 'MIT' to begin your mission, or 'Quit' to quit your"
			puts "job and pursue your lifelong dream of opening a Chipotle franchise." 
			prompt; fork1 = gets.chomp
			end
	end			
		
	def harvard_square
		puts "it worked"
	end	

	def start_game
		U.introduction
		STDIN.gets
		U.clear_screen
		U.computer
		STDIN.gets
		U.clear_screen
		U.bossmessage1
		STDIN.gets
		U.clear_screen
		U.mit_or_quit		
	end	

	def prompt
		puts
        print "> "
    end

    def alien1
    	U.alien
    	STDIN.gets
    	puts "'I followed you from downtown and I know you're on the way"
    	puts "to MIT for the device', the alien says. 'Prepare to meet your demise.'"
    	puts "Do you 'kick the alien in the junk' or 'run like hell'? PRESS ENTER." 
    	STDIN.gets
    	U.you_died
    end	

end

	
U = Game.new

U.start_game



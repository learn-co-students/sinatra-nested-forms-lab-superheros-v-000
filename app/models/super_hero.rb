class SuperHero
 	attr_accessor :name, :power, :bio

	def initialize(attributes)
		@name = attributes[:name]
		@power = attributes[:power]
		@bio = attributes[:bio]
	end 


	
end 

#superhero belongs to team 
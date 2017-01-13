class SuperHero
	attr_reader :name, :power, :biography

	SUPERHEROS = []

	def initialize(args)
		@name = args[:name]
		@power = args[:power]
		@biography = args[:biography]
		SUPERHEROES << self
	end

	def self.all
		SUPERHEROES
	end

end  

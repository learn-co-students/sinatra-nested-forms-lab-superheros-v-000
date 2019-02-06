class Hero
	attr_reader :name, :power, :biography

	HEROES = []

	def initialize(attributes)
		@name = attributes[:name]
		@power = attributes[:power]
		@biography = attributes[:biography]
		HEROES << self
	end

	def self.all 
		HEROES
	end

end
class Hero
	attr_accessor :name, :power, :bio

	HEROES = []

	def initialize(attributes)
		@name = attributes[:name]
		@power = attributes[:power]
		@bio = attributes[:bio]
		HEROES << self
	end

	def self.all
		HEROES
	end
end
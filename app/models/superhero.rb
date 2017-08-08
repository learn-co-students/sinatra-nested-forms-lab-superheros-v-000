class Superhero
	attr_accessor :name, :power, :bio

	HEROS = []

	def initialize(attri)
		@name = attri["name"]
		@power = attri["power"]
		@bio = attri["bio"]

		HEROS << self
	end

	def self.all 
		HEROS
	end

end

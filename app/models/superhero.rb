class SuperHero
	attr_accessor :name, :power, :biography

	@@superheros = []

	def initialize(arguments)
		@name = arguments[:name]
		@power = arguments[:power]
		@biography = arguments[:biography]
		@@superheros << self
	end

	def self.all
		@@superheros
	end


end

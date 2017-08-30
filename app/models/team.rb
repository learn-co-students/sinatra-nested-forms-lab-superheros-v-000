class Team
	attr_accessor :name, :motto

	@@teams = []

	def initialize(arguments)
		@name = arguments[:name]
		@motto = arguments[:motto]
		@@teams << self
	end

	def self.all
		@@teams
	end
end
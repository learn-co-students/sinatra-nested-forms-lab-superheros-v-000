class Team
	attr_accessor :motto, :name, :members

	TEAMS = []

	def initialize(args)
		@name = args[:name]
		@motto = args[:motto]
		@members = args[:members]
		TEAMS << self
	end

	def self.all
		TEAMS
	end

end
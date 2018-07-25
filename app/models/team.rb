


class Team
	attr_accessor :name, :motto
	TEAMS = []

	def initialize(details)
		@name = details[:name]
		@motto = details[:motto]
		TEAMS << self
	end

	def self.all
		TEAMS
	end

	#are instances of team being persisted anywhere?
end

class Team

	attr_accessor :name, :motto

	TEAMS = []

	def initialize(params)
		@name = params[:name]
		@motto = params[:motto]
	end 

	def self.all 
		TEAMS
	end 

end 
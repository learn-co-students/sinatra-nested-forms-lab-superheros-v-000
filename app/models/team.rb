class Team < ActiveRecord::Base
	attr_accessor :name, :heroes, :motto

	def initialize(args)
		@name = args["name"]
		@motto = args["motto"]
	end 

end 
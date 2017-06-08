class Team 
	
	attr_accessor :name, :motto, :members
	@@all = []

	def initialize(name, motto)
		@name = name
		@motto = motto
		@members = []
		@@all << self
	end



	def self.create_from_params(params)
		self.new(params[:name], params[:motto])
	end

	def add_member(member)
		self.members << member
	end

	def create_and_add_members_from_params(members)
		members = SuperHero.create_from_array(members)
		members.each do |m| 
			self.add_member(m)
		end
    end

end
	
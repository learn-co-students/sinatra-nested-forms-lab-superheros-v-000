class Team
 attr_accessor :name, :motto
 MEMBERS = []
 
 def initialize(params)
  @name = params[:name]
  @motto = params[:motto]
  MEMBERS << self
 end
 
 def self.all
  MEMBERS
 end
 
end
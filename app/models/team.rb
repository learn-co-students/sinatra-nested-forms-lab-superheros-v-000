class Team
attr_accessor :name, :motto
TEAMS = []

def initialize(params)
    @name = params[:name]
    @motto= params[:motto]
    TEAMS << self
  end
end

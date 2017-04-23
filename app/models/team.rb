class Team
  attr_accessor :name, :motto
  @@teams = []

  def initialize(params)
    @name = params['team']['name']
    @motto = params['team']['motto']
    self.class.all << self
  end

  def self.all
    @@teams
  end


end

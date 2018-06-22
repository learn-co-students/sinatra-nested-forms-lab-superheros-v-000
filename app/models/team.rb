class Team
  attr_accessor :name, :motto
  @@teams = []

  def initialize (params)
    @name, @motto = params[:name], params[:motto]
    @@teams << self
  end

  def self.all
    @@teams
  end

end

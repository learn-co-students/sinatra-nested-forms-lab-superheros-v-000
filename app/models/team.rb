class Team

  attr_reader :name, :motto
  @@teams = []
  def initialize(params)
    @name = params[:name]
    @motto = params[:motto]
  end

  def self.all
    @@teams
  end
end

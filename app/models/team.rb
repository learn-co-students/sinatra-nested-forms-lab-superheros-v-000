class Team
  attr_reader :name, :motto

  @@team_array = []

  def initialize(params)
    @name = params[:name]
    @motto = params[:motto]
    @@team_array << self
  end

  def self.all
    @@team_array
  end

end

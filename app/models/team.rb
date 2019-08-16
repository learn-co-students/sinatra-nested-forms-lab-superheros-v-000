class Team
  attr_accessor :name, :motto, :heroes
  def initialize(params)
    @name = params[:name]
    @motto = params[:motto]
    @heroes = params[:heroes]
  end
end

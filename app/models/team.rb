class Team

  attr_accessor :name, :motto, :heros


  def initialize(params)
    @name = params[:name]
    @motto = params[:motto]
  end

end

class Team
  attr_accessor :name, :motto
  # team should have association to 1 or more super heros.
  def initialize (params)
    @name = params[:name]
    @motto = params[:motto]
  end

end

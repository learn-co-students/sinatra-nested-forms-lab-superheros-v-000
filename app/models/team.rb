class Team
  attr_reader :name, :motto

  @@teams = []
  def initialize(params={})
    @name = params[:name]
    @motto = params[:motto]
  end

end

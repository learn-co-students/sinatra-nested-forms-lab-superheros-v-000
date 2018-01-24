class Team
  attr_accessor :name, :motto

  def initialize(params)
    # params[:team] = params
    @name = params[:name]
    @motto = params[:motto]
  end

end
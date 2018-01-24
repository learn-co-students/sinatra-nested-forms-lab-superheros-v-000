class Team

  attr_accessor :name, :motto

  def initialize(params)
    @name, @motto = params[:name], params[:motto]
  end

end

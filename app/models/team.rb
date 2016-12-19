class Team
  attr_accessor :name, :motto, :members

  def initialize(params)
    @name = params[:team][:name]
    @motto = params[:team][:motto]
    @members = params[:team][:members].map { |h| h = Hero.new(h) }
  end

end

class Team
  attr_accessor :name, :motto, :members

  @@all = []

  def initialize(params)
    @name = params[:name]
    @motto = params[:motto]
    @members = params[:members]

    @@all << self
  end
end

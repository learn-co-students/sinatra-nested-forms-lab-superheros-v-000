class Team
  attr_reader :name, :motto

  @@team = []

  def initialize(params)
    @name = params[:name]
    @motto = params[:motto]
    @@team << self
  end

  def self.all
    @@team
  end

end

class Team
  attr_accessor :name, :motto, :heroes

  def initialize(args)
    @name = args[:name]
    @motto = args[:motto]
    @heroes = []
  end
end

class Team
  attr_accessor :name, :motto

  def initialize(args)
    @name, @motto = args[:name], args[:motto]
  end
end

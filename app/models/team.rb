class Team
  attr_accessor :name, :motto

  def initialize(opts={})
    @name, @motto = opts[:name], opts[:motto]
  end
end

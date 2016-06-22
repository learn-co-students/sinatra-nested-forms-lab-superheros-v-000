class Team
  attr_accessor :name, :motto

  @@all = []

  def initialize(attributes)
    @name = attributes[:name]
    @motto = attributes[:motto]
    @@all < self
  end

end

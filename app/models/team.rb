class Team
  attr_accessor :name, :motto

  def initialize(attributes)
    @name = attributes[:name]
    @motto = attributes[:motto]
  end

end

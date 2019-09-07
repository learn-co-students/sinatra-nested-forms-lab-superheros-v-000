class Team
  attr_reader :name, :motto

  def initialize(details)
    @name = details[:name]
    @motto = details[:motto]
  end
end

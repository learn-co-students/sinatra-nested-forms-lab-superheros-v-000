class Team

  attr_reader :name, :motto

  def initialize(values)
    @name = values[:name]
    @motto = values[:motto]
  end

end
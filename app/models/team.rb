class Team

  attr_accessor :name, :motto, :members

  def initialize(parameters)
    @name = parameters[:name]
    @motto = parameters[:motto]
  end

end

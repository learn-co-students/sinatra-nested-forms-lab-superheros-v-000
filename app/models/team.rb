class Team

  attr_accessor :name, :motto

  def initialize(data)
    @name = data[:name]
    @motto = data[:motto]
  end

end
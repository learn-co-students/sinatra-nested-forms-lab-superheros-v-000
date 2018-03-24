class Team
  attr_accessor :name, :motto

  def initialize(force={})
    @name = force[:name]
    @motto = force[:motto]

  end
end

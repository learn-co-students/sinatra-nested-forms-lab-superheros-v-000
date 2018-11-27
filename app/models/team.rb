class Team
  attr_accessor :name, :motto, :heroes

  def initialize(name: , motto:)
    @name = name
    @motto = motto
    @heroes = []
  end

end

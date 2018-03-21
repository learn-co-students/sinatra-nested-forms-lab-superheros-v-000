class Team
  attr_accessor :name, :motto, :heroes

  def initialize(name, motto)
    @name = name
    @motto = motto
    @heroes = []
  end

  def import_heroes(heroes)
    heroes.each{|h| @heroes << h}
  end

end

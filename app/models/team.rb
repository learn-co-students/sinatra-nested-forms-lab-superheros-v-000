class Team
  attr_accessor :name, :motto

  ALL = []

  def initialize(attrib={})
    @name = attrib[:name]
    @motto = attrib[:motto]
    ALL << self
  end

  def self.all
    ALL
  end
  
end

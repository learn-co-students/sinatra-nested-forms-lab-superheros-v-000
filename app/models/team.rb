class Team
  attr_accessor:name, :motto

  @@teams=[]

  def initialize(hash)
    @name = hash[:name]
    @motto =hash[:motto]
    @@teams << self
  end

  def self.all
    @@teams
  end

end
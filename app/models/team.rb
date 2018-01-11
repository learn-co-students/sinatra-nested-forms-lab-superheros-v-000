class Team

  attr_accessor :name, :motto
  Teams = []
  def initialize(args)
    @name = args[:name]
    @motto = args[:motto]
    Teams << self
  end

  def self.all
    Teams
  end


end #ends class

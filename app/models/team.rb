class Team
  
  attr_accessor :name, :motto
  
  def initialize(args)
    self.name = args[:name]
    self.motto = args[:motto]
  end
  
end
class Team
  attr_accessor :name,:motto
  
  def initialize(name=nil,motto=nil)
    @name = name
    @motto = motto
  end
end

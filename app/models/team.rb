class Team
  attr_accessor :name, :motto

  def initialize(args)
    @name =  args[:name]
    @motto = args[:motto]
    #binding.pry
  end



end

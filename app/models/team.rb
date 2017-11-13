class Team
  attr_reader :name, :motto

  def initialize(hash)

    @name = hash[:name]
    @motto = hash[:motto]
  


  end

end

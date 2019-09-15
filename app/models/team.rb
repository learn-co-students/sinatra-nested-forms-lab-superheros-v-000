class Team
  attr_accessor :name, :motto

  def initialize(info_hash)
    @name = info_hash[:name]
    @motto = info_hash[:motto]
  end
end

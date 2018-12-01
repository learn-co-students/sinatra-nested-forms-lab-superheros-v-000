class Team
  attr_accessor :name, :motto

  def initialize(options={})
    @name  = options[:name]
    @motto = options[:motto]
  end
end

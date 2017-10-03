class Team
  attr_accessor :name, :motto

  @@team = []

  def initialize(params)
      @name, @motto = params[:name], params[:motto]
      @@team << self
  end

  def self.all
    @@team
  end


end

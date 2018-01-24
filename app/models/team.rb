class Team

  @@all = []

  attr_reader :name, :motto

  def initialize(params)
    @name = params[:name]
    @motto = params[:motto]
    @@all << self
  end

  def self.all
    @@all
  end

end
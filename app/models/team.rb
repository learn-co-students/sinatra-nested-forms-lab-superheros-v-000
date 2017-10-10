class Team
  attr_accessor :name, :motto

  @@teams = []

  def initialize(params)
    @name = params[:name]
    @motto = params[:motto]
    @@teams << self
    params[:heroes].each do |hero|
      Hero.new(hero)
    end
  end

  def self.all
    @@teams
  end

end

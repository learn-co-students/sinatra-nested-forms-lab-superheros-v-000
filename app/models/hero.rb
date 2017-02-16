class Hero
  attr_reader :name, :power, :bio

  @@all = []

  def self.all
    @@all.dup.freeze
  end

  def self.clear
    @@all.clear
  end

  def initialize(params)
    @name  = params[:name]
    @power = params[:power]
    @bio   = params[:bio]

    @@all << self
  end
end

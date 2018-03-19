class SuperHero
  attr_accessor :name, :power, :bio

  ALL = [].freeze

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = paramas[:bio]
    ALL << self
  end

  def self.all
    ALL
  end
end

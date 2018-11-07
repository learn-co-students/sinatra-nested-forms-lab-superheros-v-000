class Hero

  attr_reader :name, :power, :biography

  HEROS = []

  def initialize(param)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:biography]
  end
end

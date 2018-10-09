class Hero

attr_reader :name, :power, :biography

def initialize(params)
  @name = params[:name]
  @power = params[:power]
  @biography = params[:biography]
end

end

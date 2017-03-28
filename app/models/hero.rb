class Hero

  attr_accessor :name, :power, :bio, :team

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
  end

end

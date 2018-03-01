class Member

  attr_accessor :name, :power, :bio

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = [:bio]
  end

end

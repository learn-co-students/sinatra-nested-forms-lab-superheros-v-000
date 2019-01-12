class Team 
  
  attr_accessor :motto, :name 
  
  def initialize(params={})
    @name = params[:name]
    @motto = params[:motto]
  end
end

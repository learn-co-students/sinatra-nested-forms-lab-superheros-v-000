class Team
  attr_accessor :name, :motto, :members

  def initialize(params)
    @name = params[:team][:name]
    @motto = params[:team][:motto]
    params[:team][:members].each do |member|
      Superhero.new(member)
    end
    @members = Superhero.all
  end

end

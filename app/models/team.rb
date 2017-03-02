class Team
  attr_accessor :name, :motto, :members

  @@all_teams = []

  def initialize(params)
    @name = params[:team][:name]
    @motto = params[:team][:motto]
    @members = []
    params[:team][:members].each do |member_hash|
      superhero = Superhero.new(member_hash)
      @members << superhero
    end
    @@all_teams << self
  end

end

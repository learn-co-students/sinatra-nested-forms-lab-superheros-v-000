class Team
  attr_accessor :name, :motto

  TEAMS = []
  def initialize(params)

    @name = params[:team][:name]
    @motto = params[:team][:motto]
    TEAMS << self
  end

  def self.all
    TEAMS
  end

end


# class Team
#
#   attr_accessor :name, :motto #, #:team_id, :members
#     TEAMS = []
#     # MEMBERS = []
#
#     def initialize(params)
#       @name = params[:team][:name]
#       @motto = params[:team][:motto]
#       # @team_id = params[:team][:team_id]
#       TEAMS << self
#     end
#
#     def self.all
#       TEAMS
#     end
#     #
#     # def members
#     #   # MEMBERS << @@superheroes
#     # end
#
# end

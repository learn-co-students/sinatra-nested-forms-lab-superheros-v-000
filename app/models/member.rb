class Member
  attr_reader :name, :power, :bio
  def initialize(member_hash)
    @name = member_hash[:name]
    @power = member_hash[:power]
    @bio = member_hash[:bio]
  end
end
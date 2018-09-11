class Team

attr_accessor :name, :players, :coach

  def initialize(name, players, coach, points)
    @name = name
    @players = players
    @coach = coach
    @points = points
  end

# code commented out when attr_accessor introduced per brief :
# def name()
# return @name
# end
#
# def players
#   return @players
# end
#
# def coach
#   return @coach
# end
#
# def set_coach(new_coach)
#   @coach = new_coach
# end

def add_new_player(new_player)
  @players << new_player
  return @players
end

def check_for_player(player_name)
  @players.include? player_name
end

def add_result(result)
  @points += 1 if result == "win"
  return @points
end

end

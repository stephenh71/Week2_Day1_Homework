require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../Part_B')

class TestTeam < Minitest::Test

  def setup
    @team = Team.new("Ayr United",["John","Bob"],"Ian McCall", 0)
  end

def test_name
  result = @team.name()
  assert_equal("Ayr United", result)
end

def test_players
  result = @team.players()
  assert_equal(["John","Bob"],result)
end

def test_coach
  result = @team.coach()
  assert_equal("Ian McCall",result)
end

def test_set_coach
  result = @team.coach = "Stephen Hart"
  assert_equal("Stephen Hart", result)
end

def test_add_new_player
  result = @team.add_new_player("Ronaldo")
  assert_equal(3, @team.players.count)
end

def test_check_for_player__true
  result = @team.check_for_player("Bob")
  assert_equal(true, result)
end

def test_check_for_player__false
  result = @team.check_for_player("Ronaldhinio")
  assert_equal(false, result)
end

def test_add_result__win
  result = @team.add_result("win")
  assert_equal(1, result)
end

def test_add_result__loss
  result = @team.add_result("loss")
  assert_equal(0, result)
end

end

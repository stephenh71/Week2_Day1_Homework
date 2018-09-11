require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../Part_A')

class TestStudent < Minitest::Test

  def setup
    @student = Student.new("Stephen","G8")
  end

def test_name
  result = @student.name()
  assert_equal("Stephen",result)
end

def test_cohort
  result = @student.cohort()
  assert_equal("G8", result)
end

def test_set_name
  @student.set_name("John")
  assert_equal("John", @student.name)
end

def test_set_cohort
  @student.set_cohort("G9")
  assert_equal("G9", @student.cohort)
end

def test_talking
  result = @student.talking()
  assert_equal("I've finished homework",result)
end

def test_fave_language
  result = @student.fave_language("Ruby")
  assert_equal("I love Ruby", result)
end




end

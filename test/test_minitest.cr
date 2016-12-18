require "minitest/autorun"

class MinitestTest < Minitest::Test
  def test_assert_something
    assert true
  end

  def test_refute_something
    refute !true
  end

  def test_assert_something_equal
    assert_equal(1 + 2 + 3, 6)
  end

end

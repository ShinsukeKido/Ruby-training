require 'minitest/autorun'
require './unit.rb'

class UnitTest < Minitest::Test
  def test_unit
    assert_equal 3.28, convert_length(1, from: :m, to: :ft)
    assert_equal 60.02, convert_length(5, from: :ft, to: :in)
    assert_equal 0.25, convert_length(10, from: :in, to: :m)
  end
end

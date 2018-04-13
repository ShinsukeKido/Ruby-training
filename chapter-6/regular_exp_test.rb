require 'minitest/autorun'
require './regular_exp.rb'

class RegularExpTest < Minitest::Test
  def test_regular_exp
    old = <<~TEXT
      {
        :name =>    'Alice',
        :age     =>20,
        :gender=>        :female
      }
    TEXT

    fixed = <<~TEXT
      {
        name: 'Alice',
        age: 20,
        gender: :female
      }
    TEXT

    assert_equal fixed, regular_exp(old)
  end
end

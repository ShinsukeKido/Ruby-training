require 'minitest/autorun'
require './convert_hash_syntax.rb'

class ConvertHashSyntaxTest < Minitest::Test
  def test_convert_hash_syntax
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

    assert_equal fixed, convert_hash_syntax(old)
  end
end

require 'minitest/autorun'
require './chapter-9/exception.rb'

class ExceptionTest < Minitest::Test
  def test_string_matches_regexp
    assert_equal 'Matched: 123, 456', RegexpTest.new.match_text_to_regexp('123-456-789', /[1-6]+/)
  end

  def test_string_unmatches_regexp
    assert_equal 'Nothing matched', RegexpTest.new.match_text_to_regexp('abc-efg-hij', /[1-6]+/)
  end
end

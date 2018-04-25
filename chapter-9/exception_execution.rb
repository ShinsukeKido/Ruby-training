require './chapter-9/exception.rb'

string = RegexpTest.new.input_string
regexp = RegexpTest.new.input_regexp

puts RegexpTest.new.match_text_to_regexp(string, regexp)

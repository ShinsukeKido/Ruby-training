def input_string
  print 'Text?: '
  text = gets.chomp
  return input_string if text == ''
  text
end

def input_regexp
  print 'Pattern?: '
  pattern = gets.chomp
  return input_regexp if pattern == ''
  Regexp.new(pattern)
rescue RegexpError => e
  puts "Invalid pattern: #{e.message}"
  retry
end

def match_text_to_regexp(text, regexp)
  matches = text.scan(regexp)
  if matches.size > 0
    "Matched: #{matches.join(', ')}"
  else
    "Nothing matched"
  end
end



def input_string
  print 'Text?: '
  text = gets.chomp
  return input_string if text == ''
  text
end

def input_regexp
  begin
    print 'Pattern?: '
    pattern = gets.chomp
    return input_regexp if pattern == ''
    regexp = /#{pattern}/
  rescue RegexpError => e
    puts "Invalid pattern: #{e.message}"
    retry
  end
  regexp
end

def match(text, regexp)
  matches = text.scan(regexp)
  if matches.size > 0
    "Matched: #{matches.join(', ')}"
  else
    "Nothing matched"
  end
end



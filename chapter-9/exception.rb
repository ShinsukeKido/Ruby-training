class RegexpTest
  def regexp_execute
    match_text_to_regexp(input_string, input_regexp)
  end

  def match_text_to_regexp(text, regexp)
    matches = text.scan(regexp)
    if matches.size.positive?
      "Matched: #{matches.join(', ')}"
    else
      'Nothing matched'
    end
  end

  private

  def input_string
    print 'Text?: '
    text = gets.chomp
    return input_string if text.empty?
    text
  end

  def input_regexp
    print 'Pattern?: '
    pattern = gets.chomp
    return input_regexp if pattern.empty?
    Regexp.new(pattern)
  rescue RegexpError => e
    puts "Invalid pattern: #{e.message}"
    retry
  end
end

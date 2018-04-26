class RegexpTest
  class EmptyInputError < StandardError; end

  def regexp_execute
    text = input_string
    regexp = input_regexp
    match_text_to_regexp(text, regexp)
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
    raise EmptyInputError if text.empty?
    text
  rescue EmptyInputError
    puts 'Please input something'
    retry
  end

  def input_regexp
    print 'Pattern?: '
    pattern = gets.chomp
    raise EmptyInputError if pattern.empty?
    Regexp.new(pattern)
  rescue EmptyInputError
    puts 'Please input something'
    retry
  rescue RegexpError => e
    puts "Invalid pattern: #{e.message}"
    retry
  end
end

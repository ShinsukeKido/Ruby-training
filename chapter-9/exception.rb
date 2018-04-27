class RegexpTest
  class EmptyInputError < StandardError; end

  def regexp_execute
    text = input_string
    return 'input string error' if text.nil?
    regexp = input_regexp
    match_text_to_regexp(text, regexp)
  end

  def match_text_to_regexp(text, regexp)
    return 'input regexp error' if regexp.nil?
    matches = text.scan(regexp)
    if matches.size.positive?
      "Matched: #{matches.join(', ')}"
    else
      'Nothing matched'
    end
  end

  private

  def input_string
    retry_count = 0
    begin
      print 'Text?: '
      text = gets.chomp
      raise EmptyInputError if text.empty?
      text
    rescue EmptyInputError
      retry_count += 1
      if retry_count <= 4
        puts 'Please input string'
        retry
      end
    end
  end

  def input_regexp
    retry_count = 0
    begin
      print 'Pattern?: '
      pattern = gets.chomp
      raise EmptyInputError if pattern.empty?
      Regexp.new(pattern)
    rescue EmptyInputError
      retry_count += 1
      if retry_count <= 4
        puts 'Please input ragexp'
        retry
      end
    rescue RegexpError => e
      retry_count += 1
      if retry_count <= 4
        puts "Invalid pattern: #{e.message}"
        retry
      end
    end
  end
end

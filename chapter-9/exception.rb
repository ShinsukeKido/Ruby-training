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
    retry_input do
      print 'Text?: '
      text = gets.chomp
      raise EmptyInputError, 'input string' if text.empty?
      text
    end
  end

  def input_regexp
    retry_input do
      print 'Pattern?: '
      pattern = gets.chomp
      raise EmptyInputError, 'input regexp' if pattern.empty?
      Regexp.new(pattern)
    end
  end

  def retry_input
    retry_count = 1
    begin
      yield
    rescue EmptyInputError => e
      retry_count += 1
      if retry_count <= 5
        puts e.message
        retry
      end
    rescue RegexpError => e
      retry_count += 1
      if retry_count <= 5
        puts "Invalid pattern: #{e.message}"
        retry
      end
    end
  end
end

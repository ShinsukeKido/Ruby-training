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
      [gets.chomp, 'Please input string']
    end
  end

  def input_regexp
    retry_input do
      print 'Pattern?: '
      [gets.chomp, 'Please input regexp']
    end
  end

  def retry_input
    retry_count = 1
    begin
      pattern_sentence = yield
      pattern = pattern_sentence[0]
      sentence = pattern_sentence[1]
      raise EmptyInputError if pattern.empty?
      Regexp.new(pattern)
    rescue EmptyInputError
      retry_count += 1
      if retry_count <= 5
        puts sentence
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

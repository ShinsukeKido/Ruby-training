def fizzbuzz
  1.step(100) do |n|
    if (n % 3).zero? && (n % 5).zero?
      puts 'FizzBuzz'
    elsif (n % 3).zero?
      puts 'Fizz'
    elsif (n % 5).zero?
      puts 'Buzz'
    else
      puts n
    end
  end
end

fizzbuzz

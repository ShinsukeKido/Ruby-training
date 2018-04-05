def fizzbuzz
  n = 1
  while n <= 100 do
    if n % 3 == 0 && n % 5 == 0
      puts "FizzBuzz"
    elsif n % 3 == 0
      puts "Fizz"
    elsif n % 5 == 0
      puts "Buzz"
    else
      puts n
    end
    n = n + 1
  end
end

fizzbuzz

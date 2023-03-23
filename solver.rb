class Solver
  def factorial(number)
    if number.negative?
      raise ArgumentError, 'number must be a positive integer'
    elsif number.zero?
      1
    else
      (1..number).reduce(:*)
    end
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(number)
    if (number % 15).zero?
      'fizzbuzz'
    elsif (number % 3).zero?
      'fizz'
    elsif (number % 5).zero?
      'buzz'
    else
      number.to_s
    end
  end
end

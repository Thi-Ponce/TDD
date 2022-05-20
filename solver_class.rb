class Solver
  def factorial(number)
    return 1 if number.zero?
    raise ArgumentError, 'InvalidNumber' if !number.is_a?(Integer) || number.negative?

    factorial(number - 1) * number
  end

  def reverse(string)
    raise ArgumentError, 'Invalid input' unless string.is_a?(String)

    string.reverse
  end

  def fizzbuzz(number)
    raise ArgumentError, 'Invalid input' unless number.is_a?(Integer)

    if (number % 5).zero? && (number % 3).zero?
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

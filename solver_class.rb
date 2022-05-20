class Solver
    def factorial(number)
      return 1 if number == 0
      raise ArgumentError, 'InvalidNumber' if !number.is_a?(Integer) || number.negative?()
      factorial(number - 1) * number
    end

    def reverse(string)
      raise ArgumentError, 'Invalid input' if !string.is_a?(String)

      string.reverse
    end

    def fizzbuzz(number)
      raise ArgumentError, 'Invalid input' if !number.is_a?(Integer)
      if number % 5 == 0 && number % 3 == 0
         return "fizzbuzz"
      elsif number % 3 == 0
        return "fizz"
      elsif number % 5 == 0
        return "buzz"
      else
        number.to_s
      end
    end
end
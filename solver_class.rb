class Solver
    def factorial(number)
      return 1 if number == 0
      raise ArgumentError, 'InvalidNumber' if !number.is_a?(Integer) || number.negative?()
      factorial(number - 1) * number
    end
end
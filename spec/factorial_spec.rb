require './solver_class'

describe Solver do 
  before(:all) do 
    @solver = Solver.new
  end

  context 'These are tests for the factorial method and the solver class' do
    
    it 'Solver should return a solver' do
      expect(@solver).to be_an_instance_of Solver
    end

    it 'Factorial of 4 should be 24' do 
      expect(@solver.factorial(4)).to eq(24)
    end

    it 'Should return 1 if the integer is 0' do
      expect(@solver.factorial(0)).to eq(1)
    end

    it 'Should raise an exception for any negative integer' do
      expect{@solver.factorial(-4)}.to raise_error(ArgumentError)
    end

    it 'Should raise an error if argument is not an ineger' do
      expect{@solver.factorial('4')}.to raise_error(ArgumentError)
    end
  end
end
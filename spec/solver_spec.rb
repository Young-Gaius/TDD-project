require_relative 'spec_helper'

describe Solver do
  describe '#factorial' do
    it 'returns 1 for factorial of 0' do
      expect(Solver.factorial(0)).to eq(1)
    end

    it 'returns the correct factorial for a positive integer' do
      expect(Solver.factorial(5)).to eq(120)
    end

    it 'raises an exception for negative integers' do
      expect { Solver.factorial(-3) }.to raise_error(ArgumentError)
    end
  end

  describe '#reverse' do
    it 'reverses a string' do
      expect(Solver.reverse('hello')).to eq('olleh')
    end
  end

  describe '#fizzbuzz' do
    it 'returns "fizz" for multiples of 3' do
      expect(Solver.fizzbuzz(3)).to eq('fizz')
    end
    it 'returns "buzz" for multiples of 5' do
      expect(Solver.fizzbuzz(5)).to eq('buzz')
    end
    it 'returns "fizzbuzz" for multiples of 3 and 5' do
      expect(Solver.fizzbuzz(15)).to eq('fizzbuzz')
    end
    it 'returns the number as a string for other cases' do
      expect(Solver.fizzbuzz(7)).to eq('7')
    end
  end
end

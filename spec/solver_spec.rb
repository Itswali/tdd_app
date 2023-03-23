require_relative '../solver'

describe Solver do
  describe '#factorial' do
    context 'when given 0' do
      it 'returns 1' do
        expect(Solver.new.factorial(0)).to eq(1)
      end
    end

    context 'when given a positive integer' do
      it 'returns the correct factorial' do
        expect(Solver.new.factorial(5)).to eq(120)
        expect(Solver.new.factorial(10)).to eq(3_628_800)
      end
    end

    context 'when given a negative integer' do
      it 'raises an exception' do
        expect { Solver.new.factorial(-3) }.to raise_error(ArgumentError)
      end
    end
  end

  describe '#reverse' do
    context 'when given "hello"' do
      it 'returns "olleh"' do
        expect(Solver.new.reverse('hello')).to eq('olleh')
      end
    end
  end

  describe '#fizzbuzz' do
    context 'when given a integer that is divisible by 3 and 5' do
      it 'returns "fizzbuzz"' do
        expect(Solver.new.fizzbuzz(15)).to eq('fizzbuzz')
      end
    end
  end
  context 'when given a integer that is divisible by 3' do
    it 'returns "fizz"' do
      expect(Solver.new.fizzbuzz(9)).to eq('fizz')
    end
  end

  context 'when given "hello"' do
    it 'returns "buzz"' do
      expect(Solver.new.fizzbuzz(20)).to eq('buzz')
    end
  end

  context 'when given a integer that is not divisible by 3 or 5 or both' do
    it 'returns string of the evaluated number' do
      expect(Solver.new.fizzbuzz(11)).to eq('11')
    end
  end
end

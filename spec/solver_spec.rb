require_relative '../solver.rb'

describe Solver do
  describe "#factorial" do
    context "when given 0" do
      it "returns 1" do
        expect(Solver.new.factorial(0)).to eq(1)
      end
    end

    context "when given a positive integer" do
      it "returns the correct factorial" do
        expect(Solver.new.factorial(5)).to eq(120)
        expect(Solver.new.factorial(10)).to eq(3628800)
      end
    end

    context "when given a negative integer" do
      it "raises an exception" do
        expect{Solver.new.factorial(-3)}.to raise_error(ArgumentError)
      end
    end
  end

  describe "#reverse" do
    context "when given a string" do
      it "returns the string reversed" do
        expect(Solver.new.reverse("hello")).to eq("olleh")
        expect(Solver.new.reverse("racecar")).to eq("racecar")
      end
    end
  end

  describe "#fizzbuzz" do
    context "when given a number divisible by 3" do
      it "returns 'fizz'" do
        expect(Solver.new.fizzbuzz(3)).to eq("fizz")
        expect(Solver.new.fizzbuzz(9)).to eq("fizz")
      end
    end

    context "when given a number divisible by 5" do
      it "returns 'buzz'" do
        expect(Solver.new.fizzbuzz(5)).to eq("buzz")
        expect(Solver.new.fizzbuzz(20)).to eq("buzz")
      end
    end

    context "when given a number divisible by both 3 and 5" do
      it "returns 'fizzbuzz'" do
        expect(Solver.new.fizzbuzz(15)).to eq("fizzbuzz")
        expect(Solver.new.fizzbuzz(45)).to eq("fizzbuzz")
      end
    end

    context "when given a number not divisible by 3 or 5" do
      it "returns the number as a string" do
        expect(Solver.new.fizzbuzz(1)).to eq("1")
        expect(Solver.new.fizzbuzz(7)).to eq("7")
      end
    end
  end
end

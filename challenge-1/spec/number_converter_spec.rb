require './number_converter'

RSpec.describe NumberConverter, '#converter' do
  context "given a natural number" do
    it "convert 10 to a roman number X" do
      result = NumberConverter.natural_to_roman(10)
      expect(result).to eq "X"
    end

    it "convert 20 to a roman number XX " do
      result = NumberConverter.natural_to_roman(20)
      expect(result).to eq "XX"
    end

    it "convert 30 to a roman number XXX " do
      result = NumberConverter.natural_to_roman(30)
      expect(result).to eq "XXX"
    end

    it "convert 40 to a roman number XL" do
      result = NumberConverter.natural_to_roman(40)
      expect(result).to eq "XL"
    end

    it "convert 50 to a roman number L" do
      result = NumberConverter.natural_to_roman(50)
      expect(result).to eq "L"
    end

    it "convert 39 to a roman number XXXIX" do
      result = NumberConverter.natural_to_roman(39)
      expect(result).to eq "XXXIX"
    end

    it "convert 246 to a roman number CCXLVI" do
      result = NumberConverter.natural_to_roman(246)
      expect(result).to eq "CCXLVI"
    end

    it "convert 789 to a roman number DCCLXXXIX" do
      result = NumberConverter.natural_to_roman(789)
      expect(result).to eq "DCCLXXXIX"
    end

    it "convert 2421 to a roman number MMCDXXI" do
      result = NumberConverter.natural_to_roman(2421)
      expect(result).to eq "MMCDXXI"
    end

    it "convert 160 to a roman number CLX" do
      result = NumberConverter.natural_to_roman(160)
      expect(result).to eq "CLX"
    end

    it "convert 207 to a roman number CCVII" do
      result = NumberConverter.natural_to_roman(207)
      expect(result).to eq "CCVII"
    end

    it "convert 1009 to a roman number MIX" do
      result = NumberConverter.natural_to_roman(1009)
      expect(result).to eq "MIX"
    end

    it "convert 1066 to a roman number MLXVI" do
      result = NumberConverter.natural_to_roman(1066)
      expect(result).to eq "MLXVI"
    end
  end

  context "given a non natural number" do
    it "convert 30.5 to a roman number MLXVI" do
      result = NumberConverter.natural_to_roman(30.5)
      expect(result).to eq "Not a natural number"
    end
  end

  context "given a non representative number" do
    it "convert 4000 to a roman number MLXVI" do
      result = NumberConverter.natural_to_roman(4000)
      expect(result).to eq "The largest number that can be converted is 3,999"
    end
  end
end

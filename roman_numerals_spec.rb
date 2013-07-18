require 'rspec'
require_relative 'roman_numeral'

describe "RomanNumeral" do
    {
      0 => "",
      1 => "I",
      2 => "II",
      4 => "IV",
      5 => "V",
      6 => "VI",
      7 => "VII",
      9 => "IX",
      37 => "XXXVII",
      90 => "XC",
      99 => "XCIX",
      100 => "C",
      1978 => "MCMLXXVIII",
      3000 => "MMM"
    }.each do |arabic, roman|
      it "converts #{arabic} to #{roman}" do
        expect(RomanNumeral.convert(arabic)).to eql roman
      end
    end
end

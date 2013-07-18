require 'rspec'

class RomanNumeral
  @@conversions  = [[1000, 'M'], [900, 'CM'], [500, 'D'], [400, 'CD'], [100, 'C'], [90, 'XC'], [50, 'L'], [40, 'XL'], [10, 'X'], [9, 'IX'], [5, 'V'], [4, 'IV'], [1, 'I']]
  def self.convert number
    roman = ""
    @@conversions.each do |(a,b)|
      blah = number / a
      roman += b * blah
      number -= blah * a
    end
    roman
  end
end


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
      90 => "XC",
      100 => "C",
      1978 => "MCMLXXVIII"
    }.each do |arabic, roman|
      it "converts #{arabic} to #{roman}" do
        expect(RomanNumeral.convert(arabic)).to eql roman
      end
    end
end

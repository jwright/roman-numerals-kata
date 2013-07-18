require 'rspec'

class RomanNumeral
  def self.convert(number)
    return "" if number == 0
    if number < 5
      "I" * number
    else
      "V" + ("I" * (number - 5))
    end

  end
end


describe "RomanNumeral" do
    {
      0 => "",
      1 => "I",
      2 => "II",
      5 => "V",
      6 => "VI"
    }.each do |arabic, roman|
      it "converts #{arabic} to #{roman}" do
        expect(RomanNumeral.convert(arabic)).to eql roman
      end
    end
end

require 'rspec'

class RomanNumeral
  def self.convert_to_stuff(number)
    roman = ""
    if number < 4
     roman += "I" * number
    elsif number == 4
     roman += "IV"
    elsif number >= 5
     roman += "V"
     number -= 5
     roman += "I" * number
    end
    roman
  end


  def self.convert(number)
    if number < 10
      return convert_to_stuff(number)
    end
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
      7 => "VII"
    }.each do |arabic, roman|
      it "converts #{arabic} to #{roman}" do
        expect(RomanNumeral.convert(arabic)).to eql roman
      end
    end
end

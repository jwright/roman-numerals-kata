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


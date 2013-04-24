class RomanNumerals
  ROMAN_NUMERAL_KEY = {
    1000 => 'M' ,
    900  => 'CM',
    500  => 'D' ,
    100  => 'C' ,
    90   => 'XC',
    50   => 'L' ,
    40   => 'XL',
    10   => 'X' ,
    9    => 'IX',
    5    => 'V' ,
    4    => 'IV',
    1    => 'I' ,
  }

  def calculate(number)
    result = ""

    ROMAN_NUMERAL_KEY.keys.each do |key|
      while number >= key
        result << ROMAN_NUMERAL_KEY[key]
        number -= key
      end

    end

    result
  end

end
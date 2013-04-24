class RomanNumerals
  ROMAN_NUMERAL_KEY = {
    1000 => 'M',
    500 => 'D',
    100 => 'C',
    50  => 'L',
    10  => 'X',
    5   => 'V',
    1   => 'I',
  }

  def calculate(number)
    result = ""

    # ROMAN_NUMERAL_KEY.keys.each do |key|
    # # binding.pry if key == 10
    #   if (number + 1) >= key && (number + 1) % key == 0 and key != 1
    #     result << "I"
    #     number += 1
    #   end
    # end

    ROMAN_NUMERAL_KEY.keys.each do |key|
      while number >= key
        result << ROMAN_NUMERAL_KEY[key]
        number -= key
      end

    end

    result
  end

end
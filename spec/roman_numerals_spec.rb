require 'roman_numerals'

describe RomanNumerals do

[
  [1,     'I'   ],
  [2,     'II'  ],
  [3,     'III' ],
  [4,     'IV'  ],
  [5,     'V'   ],
  [6,     'VI'  ],
  [9,     'IX'  ],
  [10,    'X'   ],
  [11,    'XI'  ],
  [14,    'XIV' ],
  [15,    'XV'  ],
  [19,    'XIX' ],
  [20,    'XX'  ],
  [40,    'XL'  ],
  [90,    'XC'  ],
  [99,    'XCIX'],
  [501,    'DI' ],
  [550,     'DL'],
  [99,    'XCIX'],
  [890, 'DCCCXC'],
  [1800, 'MDCCC'],
  [900,     'CM'],
].each do |number, result|
    it "returns #{result} when a #{number} is input" do
      subject.calculate(number).should == result
    end
  end

end
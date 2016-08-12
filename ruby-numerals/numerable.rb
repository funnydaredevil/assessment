module Numerable
  refine Numeric do
    def to_phrase
      accumulator = ''
      numbers_hash.each do |num, name|
        return accumulator if zero?
        return accumulator + name.to_s if single_digit_number?(num)
        if less_than_hundred?(num)
          return accumulator + name.to_s if (self % num).zero?
          return accumulator + name.to_s + '-' + (self % num).to_phrase
        elsif modulo_positive?(num)
          return accumulator + (self / num).to_phrase + " #{name}" + delimiter(num) + (self % num).to_phrase
        end
      end
    end

    private

    def single_digit_number?(num)
      to_s.length == 1 && modulo_positive?(num)
    end

    def less_than_hundred?(num)
      self < 100 && modulo_positive?(num)
    end

    def modulo_positive?(num)
      (self / num).positive?
    end

    def delimiter(num)
      num == 100 ? ' ' : ' and '
    end

    def numbers_hash
      {
        1_000 => 'thousand',
        100 => 'hundred',
        90 => 'ninety',
        80 => 'eighty',
        70 => 'seventy',
        60 => 'sixty',
        50 => 'fifty',
        40 => 'forty',
        30 => 'thirty',
        20 => 'twenty',
        19 => 'nineteen',
        18 => 'eighteen',
        17 => 'seventeen',
        16 => 'sixteen',
        15 => 'fifteen',
        14 => 'fourteen',
        13 => 'thirteen',
        12 => 'twelve',
        11 => 'eleven',
        10 => 'ten',
        9 => 'nine',
        8 => 'eight',
        7 => 'seven',
        6 => 'six',
        5 => 'five',
        4 => 'four',
        3 => 'three',
        2 => 'two',
        1 => 'one'
      }
    end
  end
end
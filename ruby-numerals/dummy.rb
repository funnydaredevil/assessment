class BaseDummy
  def initialize(number)
    @number = number
  end

  attr_reader :number
end

class Dummy < BaseDummy
  def numerize
    number.to_phrase
  end
end

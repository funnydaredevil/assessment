require './numerable'

class BaseDummy
  def initialize(number)
    @number = number
  end

  attr_reader :number
end

class Dummy < BaseDummy
  def to_phrase
    number.to_phrase
  end
end

class RefinedDummy < BaseDummy
  using Numerable

  def to_phrase
    number.to_phrase
  end
end

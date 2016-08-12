require 'rspec'
require './dummy'

RSpec.describe Numeric do
  context 'Dummy' do
    describe '#to_phrase' do
      it 'raises an exception' do
        expect { Dummy.new(7).to_phrase }.to raise_error(NoMethodError)
      end
    end
  end

  context 'RefinedDummy' do
    describe '#to_phrase' do
      it 'converts 7 to seven' do
        dummy = RefinedDummy.new(7)
        expect(dummy.to_phrase).to eq 'seven'
      end

      it 'converts 42 to forty-two' do
        dummy = RefinedDummy.new(42)
        expect(dummy.to_phrase).to eq 'forty-two'
      end

      it 'converts 2001 to two thousand and one' do
        dummy = RefinedDummy.new(2001)
        expect(dummy.to_phrase).to eq 'two thousand and one'
      end

      it 'converts 1999 to nineteen hundred and ninety-nine' do
        dummy = RefinedDummy.new(1999)
        expect(dummy.to_phrase).to eq 'nineteen hundred and ninety-nine'
      end

      it 'converts 999 to nineteen hundred and ninety-nine' do
        dummy = RefinedDummy.new(999)
        expect(dummy.to_phrase).to eq 'nine hundred ninety-nine'
      end
    end
  end
end

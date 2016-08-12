require 'rspec'
require './dummy'

RSpec.describe Numeric do
  context 'Dummy' do
    describe '#numerize' do
      it 'raises an exception' do
        expect { Dummy.new(7).numerize }.to raise_error(NoMethodError)
      end
    end
  end
end

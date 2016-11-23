require 'spec_helper'

# Check boundaries for each input value

describe OddOccurrencesInArray do
  it 'sample' do
    extend OddOccurrencesInArray
    a = [9,3,9,3,9,7,9]
    expect(solution(a)).to eq(7)
  end

  it 'zeros' do
    extend OddOccurrencesInArray
    a = [1,0,0,0,0]
    expect(solution(a)).to eq(1)
  end

  it 'array with one element' do
    extend OddOccurrencesInArray
    a = [2]
    expect(solution(a)).to eq(2)
  end

  it 'big array' do
    extend OddOccurrencesInArray
    a = ([1,1_000_000_000] * 500_000) + [3]
    expect(solution(a)).to eq(3)
  end

end

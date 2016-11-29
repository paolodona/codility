require 'spec_helper'

# Check boundaries for each input value

describe PermMissingElem do

  it '12' do
    extend PermMissingElem
    a = [1]
    expect(solution(a)).to eq(2)
  end

  it '123a' do
    extend PermMissingElem
    a = [1, 2]
    expect(solution(a)).to eq(3)
  end

  it '123b' do
    extend PermMissingElem
    a = [1, 3]
    expect(solution(a)).to eq(2)
  end

  it '123c' do
    extend PermMissingElem
    a = [2, 3]
    expect(solution(a)).to eq(1)
  end

  it 'sample' do
    extend PermMissingElem
    a = [2,3,1,5]
    expect(solution(a)).to eq(4)
  end

  it 'empty array' do
    extend PermMissingElem
    a = []
    expect(solution(a)).to eq(1)
  end

  it 'max value' do
    extend PermMissingElem
    a = 100_001.times.to_a
    a.delete_at(0)
    a.delete_at(50_000)

    expect(solution(a)).to eq(50_001)
  end

end

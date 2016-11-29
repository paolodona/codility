require 'spec_helper'

# Check boundaries for each input value

describe TapeEquilibrium do
  it 'sample' do
    extend TapeEquilibrium
    a = [3, 1, 2, 4, 3]
    expect(solution(a)).to eq(1)
  end

  it 'size 2' do
    extend TapeEquilibrium
    a = [1, 1]
    expect(solution(a)).to eq(0)
  end

  it 'size 3' do
    extend TapeEquilibrium
    a = [1, 1, 1]
    expect(solution(a)).to eq(1)
  end

  it 'negative size 3' do
    extend TapeEquilibrium
    a = [-1, -1, -1]
    expect(solution(a)).to eq(1)
  end

  it 'size 4' do
    extend TapeEquilibrium
    a = [1, 1, 1, 1]
    expect(solution(a)).to eq(0)
  end

  it 'slope' do
    extend TapeEquilibrium
    a = [-10, -2, 4, 10]
    expect(solution(a)).to eq(18)
  end

  it 'negatives' do
    extend TapeEquilibrium
    a = [-10, 0, -10]
    expect(solution(a)).to eq(0)
  end

  it 'simple slope' do
    extend TapeEquilibrium
    a = [-10, 0, 10]
    expect(solution(a)).to eq(20)
  end

  it '0a' do
    extend TapeEquilibrium
    a = [-10, 10, 10]
    expect(solution(a)).to eq(10)
  end

  it '0b' do
    extend TapeEquilibrium
    a = [-10, -10, 10]
    expect(solution(a)).to eq(10)
  end
end

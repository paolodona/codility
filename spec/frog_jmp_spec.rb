require 'spec_helper'

# Check boundaries for each input value

describe FrogJmp do

  it 'sample' do
    extend FrogJmp
    x, y, d = 10, 80, 30
    expect(solution(x,y,d)).to eq(3)
  end

  it '0 jumps' do
    extend FrogJmp
    x, y, d = 0, 0, 10
    expect(solution(x,y,d)).to eq(0)
  end

  it 'max values' do
    extend FrogJmp
    x, y, d = 1, 1_000_000_000, 1_000_000_000
    expect(solution(x,y,d)).to eq(1)
  end

  it 'min values' do
    extend FrogJmp
    x, y, d = 1, 2, 1
    expect(solution(x,y,d)).to eq(1)
  end

  it '111' do
    extend FrogJmp
    x, y, d = 1, 1, 1
    expect(solution(x,y,d)).to eq(0)
  end

end

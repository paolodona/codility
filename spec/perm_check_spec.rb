require 'spec_helper'

# Check boundaries for each input value

describe PermCheck do
  it 'sample positive' do
    extend PermCheck
    a = [4,1,3,2]
    expect(solution(a)).to eq(1)
  end

  it 'sample negative' do
    extend PermCheck
    a = [4,1,3]
    expect(solution(a)).to eq(0)
  end

  it 'sample 1 positive' do
    extend PermCheck
    a = [1]
    expect(solution(a)).to eq(1)
  end

  it 'sample 1 negative' do
    extend PermCheck
    a = [2]
    expect(solution(a)).to eq(0)
  end

  it 'sample 2 positive' do
    extend PermCheck
    a = [1,2]
    expect(solution(a)).to eq(1)
  end

  it 'sample 2 posive b' do
    extend PermCheck
    a = [2,1]
    expect(solution(a)).to eq(1)
  end

  it 'sample 2 negative' do
    extend PermCheck
    a = [3,1]
    expect(solution(a)).to eq(0)
  end

  it 'sample 3 negative' do
    extend PermCheck
    a = [1,1,4]
    expect(solution(a)).to eq(0)
  end

  it 'sample max array size positive' do
    extend PermCheck
    a = (1..100_000).to_a
    expect(solution(a)).to eq(1)
  end

  it 'sample array size max value' do
    extend PermCheck
    a = [1_000_000_000]
    expect(solution(a)).to eq(0)
  end
end

require 'spec_helper'

# Check boundaries for each input value

describe CyclicRotation do
  it 'rotate by 0' do
    extend CyclicRotation
    a = [1,2,3,4]
    k = 0
    expect(solution(a, k)).to eq([1,2,3,4])
  end

  it 'rotate by 1' do
    extend CyclicRotation
    a = [1,2,3,4]
    k = 1
    expect(solution(a, k)).to eq([4,1,2,3])
  end

  it 'rotate by array size' do
    extend CyclicRotation
    a = [1,2,3,4]
    k = 4
    expect(solution(a, k)).to eq([1,2,3,4])
  end

  it 'rotate by more than array size' do
    extend CyclicRotation
    a = [1,2,3,4]
    k = 5
    expect(solution(a, k)).to eq([4,1,2,3])
  end

  it 'rotate empty array by 0' do
    extend CyclicRotation
    a = []
    k = 0
    expect(solution(a, k)).to eq([])
  end

  it 'rotate empty array by 2' do
    extend CyclicRotation
    a = []
    k = 2
    expect(solution(a, k)).to eq([])
  end
end

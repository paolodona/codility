module CyclicRotation
  def solution(a, k)
    return [] if a == []
    rotations = k % a.size # prevent over-rotating
    split_at = a.size-rotations
    return a[split_at...a.size] + a[0...split_at]
  end
end

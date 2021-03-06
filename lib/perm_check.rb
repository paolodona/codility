module PermCheck
  def solution(a)
    n = a.size
    counts = []
    n.times do |i|
      x = a[i]
      return 0 if x > n
      return 0 if !counts[x].nil?
      counts[x] = true
    end
    counts.size == n + 1 ? 1 : 0
  end
end

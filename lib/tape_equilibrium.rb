module TapeEquilibrium
  def solution(a)
    total = a.inject(0) {|x, sum| sum += x}
    n = a.size
    min = nil
    left, right = 0, total
    (n-1).times do |p|
      left  += a[p]
      right -= a[p]
      diff = (left - right).abs
      # puts({a:a, n:n, p:p, 'a[p]' => a[p], left:left, right:right, diff:diff})
      min = diff if min.nil? || diff < min
    end
    return min
  end
end

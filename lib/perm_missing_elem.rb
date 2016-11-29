module PermMissingElem
  def solution(a)
    total = a.inject(0) {|x, sum| sum += x}
    max = a.size + 1
    triangular = max * (max + 1) / 2
    missing = (triangular - total)
    return missing
  end
end

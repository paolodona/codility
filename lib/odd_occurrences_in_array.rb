module OddOccurrencesInArray
  def solution(a)
    a.inject(0) {|result, x| result ^ x}
  end
end

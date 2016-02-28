# Enter your object-oriented solution here!
class Multiples
  def initialize(limit)
    @limit=limit
  end
  def collect_multiples
    i=1
    @multiples=[]
    while i < @limit do
      if i % 3 == 0 || i % 5 == 0
        @multiples.push(i)
      end
      i+=1
    end
    return @multiples
  end

  def sum_multiples
    new_array = collect_multiples
    new_array.reduce(0, :+)
  end
end
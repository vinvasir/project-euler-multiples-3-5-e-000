# Enter your procedural solution here!


def collect_multiples(limit)
  i=1
  multiples = [] #for some reason it only works when multiples is defined here in the local scope, not in the global scope before the method declaration. Is that a ruby feature? 
  while i < limit do
    if i % 3 == 0 || i % 5 == 0
      multiples.push(i)
    end
    i+=1
  end
  return multiples
end

def sum_multiples(limit)
  new_array=collect_multiples(limit)
  new_array.reduce(0, :+)
end
defmodule M do

def main do
  subsets([3, 5, 2, 7, 4, 2, 3])
end

def subsets(list) do
  if list == [] do
    [[]] # there is only one subset, the empty list
  else
    head = hd(list)
    tail = tl(list)
    subsets_of_tail = subsets(tail)
    combine = fn subset ->
      with_head = [head | subset]
      [with_head, subset]
    end
    Enum.flat_map(subsets_of_tail, combine)
  end
end

end

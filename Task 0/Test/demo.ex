defmodule M do

  def main do
    matrix=[
        [21 ,"na", "na", "na", 12],
        ["na", "na", 12, "na", "na"],
        ["na", "na", "na", "na", "na"],
        [17, "na", "na", "na", "na"],
        ["na", 22, "na", "na", "na"]
        ]
    display_list(matrix,[])
  end

  def display_list([h|t], old_list) do
    flist1=old_list
    new_list = Enum.filter(h, fn(x) -> is_number(x) end)
    IO.inspect new_list,char_lists: :as_lists12
    flist3=flist1 ++ new_list
    IO.inspect flist3,char_lists: :as_lists12
    display_list(t,flist3)
  end

  def display_list([], old_list), do: nil

end

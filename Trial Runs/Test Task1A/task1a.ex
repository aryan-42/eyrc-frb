defmodule M do
  def printMatrix do

    matrix_of_sum = #[
        [21 ,"na", "na", "na", 12]#,
        #["na", "na", 12, "na", "na"],
        #["na", "na", "na", "na", "na"],
        #[17, "na", "na", "na", "na"],
        #["na", 22, "na", "na", "na"]
        #]

        #new_list= Enum.filter(matrix_of_sum, fn(x) -> is_number(x) end)

        Enum.each(matrix_of_sum, fn(s) -> Enum.filter(s, fn(x) -> is_number(x) end)  end)

  end

end

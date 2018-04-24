defmodule HighOrder do
  def sum_nums(enumerable) do
    # convert add_num(num, acc) to a lambda function
    Enum.reduce(enumerable, 0, &add_num/2)
  end

  defp add_num(num, acc) when is_number(num) do
    acc + num
  end

  defp add_num(_, acc), do: acc

  defmodule Comprehensions do
    def do_comprehension(l, f) do
      for x <- l do
        f.(x)
      end
    end

    def do_comprehension_into(l, f) do
      for x <- l, into: %{} do
        {x, f.(x)}
      end
    end

    def do_comprehension_into(l, f, a) do
      for x <- l, into: a do
        {x, f.(x)}
      end
    end

    @doc """
    Takes an enumerable 'l', a function 'func' and a filter function 'filter'.

    It returns an enumerable by applying 'func' to all elements of 'l'
    that match 'filter'.
    """
    def do_comprehension(l, func, filter) do
      for x <- l, filter.(x) do
        func.(x)
      end
    end
  end
end

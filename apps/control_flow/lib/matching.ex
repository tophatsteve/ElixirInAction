defmodule Matching do
  defmodule MatchList do
    @doc """
    Returns the 1st element from a list

    ## Examples
        iex> Matching.MatchList.get_first([1, 2, 3])
        1

    """
    def get_first(l) do
      [h | _] = l
      h
    end

    @doc """
    Returns the 2nd element from a list

    ## Examples
        iex> Matching.MatchList.get_second([1, 2, 3])
        2

    """
    def get_second(l) do
      [_ | [s | _]] = l
      s
    end
  end

  defmodule MatchMap do
    @doc """
    Returns the name from the map

    ## Examples
        iex> Matching.MatchMap.get_name(%{name: "Steve", age: "49"})
        "Steve"

    """
    def get_name(m) do
      %{name: n} = m
      n
    end
  end

  defmodule MatchBitString do
    @doc """
    Returns the first x bits from the binary bin

    ## Examples
        iex> Matching.MatchBitString.get_first_x_bits(8, <<1, 2, 3>>)
        1

    """
    def get_first_x_bits(x, bin) do
      <<a::size(x), _rest::binary>> = bin
      a
    end
  end

  defmodule MatchFunctions do
    def area({a, b}) do
      a * b
    end

    def typed_area({:rectange, a, b}) do
      a * b
    end

    def typed_area({:square, a}) do
      a * a
    end

    def typed_area({:circle, r}) do
      r * r * 3.14
    end

    def typed_area(unknown) do
      {:error, {:unknow_shape, unknown}}
    end
  end
end

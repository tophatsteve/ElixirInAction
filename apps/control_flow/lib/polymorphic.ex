defmodule Polymorphic do
  def double(x) when is_number(x), do: 2 * x
  def double(x) when is_binary(x), do: x <> x
  def double(x) when is_binary(x) or is_atom(x), do: {x, x}

  def fact(0), do: 1
  def fact(n), do: n * fact(n - 1)
end

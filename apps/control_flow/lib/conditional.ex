defmodule Conditional do
  def is_it_true(x) do
    if x do
      "yes"
    else
      "no"
    end
  end

  def is_it_true_one_liner(x) do
    if x, do: "yes", else: "no"
  end

  def is_it_not_true(x) do
    unless x do
      "yes"
    else
      "no"
    end
  end

  def compare(x, y) do
    cond do
      x > y -> :more
      x < y -> :less
      true -> :equal
    end
  end

  def is_it(x) do
    case x do
      :cat ->
        "cat"

      :dog ->
        "dog"

      :monkey ->
        "monkey"

      _ ->
        # multiline clause
        x = "something else"
        x
    end
  end
end

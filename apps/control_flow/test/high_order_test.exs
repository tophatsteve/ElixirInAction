defmodule HighOrderTest do
  use ExUnit.Case

  test "returns the total when passed a numeric list" do
    assert HighOrder.sum_nums([1, 2, 3, 4]) == 10
  end

  test "returns the total ignoring non-numeric values" do
    assert HighOrder.sum_nums([1, "abc", 2, :abc, 3, 4]) == 10
  end

  test "comprehension applies function" do
    assert HighOrder.Comprehensions.do_comprehension([1, 2, 3, 4], &(&1 * 2)) == [2, 4, 6, 8]
  end

  test "comprehension with into: returns correct collection type" do
    squares = HighOrder.Comprehensions.do_comprehension_into([1, 2, 3, 4], &:math.pow(&1, 2))
    assert squares[2] == 4.0
  end

  test "comprehension with into: uses passed in results" do
    squares = HighOrder.Comprehensions.do_comprehension_into([1, 2, 3, 4], &:math.pow(&1, 2), [])
    assert squares == [{1, 1.0}, {2, 4.0}, {3, 9.0}, {4, 16.0}]
  end

  test "comprehension filters out odd source values" do
    squares =
      HighOrder.Comprehensions.do_comprehension(
        [1, 2, 3, 4],
        &:math.pow(&1, 2),
        &(rem(&1, 2) == 0)
      )

    assert length(squares) == 2
    assert Enum.at(squares, 0) == 4.0
    assert Enum.at(squares, 1) == 16.0
  end
end

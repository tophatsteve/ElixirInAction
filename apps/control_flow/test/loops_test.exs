defmodule LoopsTest do
  use ExUnit.Case

  # non-tail call
  test "positive argument returns positive list" do
    assert Loops.NaturalNums.print(3) == [3, 2, 1]
  end

  test "negative argument returns negative list" do
    assert Loops.NaturalNums.print(-3) == [-3, -2, -1]
  end

  test "zero argument returns empty list" do
    assert Loops.NaturalNums.print(0) == []
  end

  # tail call
  test "positive argument returns positive list (tail call version)" do
    assert Loops.NaturalNums.print_tail_call(3) == [1, 2, 3]
  end

  test "negative argument returns negative list (tail call version)" do
    assert Loops.NaturalNums.print_tail_call(-3) == [-1, -2, -3]
  end
end

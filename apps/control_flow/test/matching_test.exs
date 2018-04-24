defmodule MatchingTest do
  use ExUnit.Case
  doctest Matching.MatchList
  doctest Matching.MatchMap
  doctest Matching.MatchBitString

  test "get_first returns the first element" do
    assert Matching.MatchList.get_first([1, 2, 3]) == 1
  end

  test "get_second returns the second element" do
    assert Matching.MatchList.get_second([1, 2, 3]) == 2
  end

  test "get_name returns the name field of the map" do
    assert Matching.MatchMap.get_name(%{name: "Steve", age: "49"}) == "Steve"
  end

  test "get_first_x_bits gets the first x bits in a binary" do
    assert Matching.MatchBitString.get_first_x_bits(8, <<1, 2, 3>>) == 1
  end

  test "area matches the tuple passed in and computes the area" do
    assert Matching.MatchFunctions.area({2, 3}) == 6
  end
end

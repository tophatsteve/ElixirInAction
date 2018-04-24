defmodule ConditionalTest do
  use ExUnit.Case

  test "is_it_true returns 'yes' for true" do
    assert Conditional.is_it_true(true) == "yes"
  end

  test "is_it_true returns 'no' for false" do
    assert Conditional.is_it_true(false) == "no"
  end

  test "is_it_true returns 'yes' for true conditions" do
    assert Conditional.is_it_true(1 == 1) == "yes"
  end

  test "is_it_true returns 'no' for false conditions" do
    assert Conditional.is_it_true(1 == 2) == "no"
  end

  test "is_it_not_true returns 'no' for true" do
    assert Conditional.is_it_not_true(true) == "no"
  end

  test "is_it_not_true returns 'yes' for false" do
    assert Conditional.is_it_not_true(false) == "yes"
  end

  test "is_it_not_true returns 'no' for true conditions" do
    assert Conditional.is_it_not_true(1 == 1) == "no"
  end

  test "is_it_not_true returns 'yes' for false conditions" do
    assert Conditional.is_it_not_true(1 == 2) == "yes"
  end

  test "compare(3,5) returns :less" do
    assert Conditional.compare(3, 5) == :less
  end

  test "compare(5,3) returns :more" do
    assert Conditional.compare(5, 3) == :more
  end

  test "compare(3,3) returns :equal" do
    assert Conditional.compare(3, 3) == :equal
  end

  test "is_it(:cat) return 'cat'" do
    assert Conditional.is_it(:cat) == "cat"
  end

  test "is_it(:hamster) return 'something else'" do
    assert Conditional.is_it(:hamster) == "something else"
  end
end

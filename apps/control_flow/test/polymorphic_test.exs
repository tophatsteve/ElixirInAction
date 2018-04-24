defmodule PolymorphicTest do
  use ExUnit.Case

  test "double number returns number * 2" do
    assert Polymorphic.double(5) == 10
  end

  test "double string concatenates a copy of the string" do
    assert Polymorphic.double("x") == "xx"
  end

  test "double boolean returns a tuple with the boolean duplicated" do
    assert Polymorphic.double(true) == {true, true}
  end

  test "factorial of 0 is 1" do
    assert Polymorphic.fact(0) == 1
  end

  test "factorial of 1 is 1" do
    assert Polymorphic.fact(1) == 1
  end

  test "factorial of 2 is 2" do
    assert Polymorphic.fact(2) == 2
  end

  test "factorial of 3 is 6" do
    assert Polymorphic.fact(3) == 6
  end
end

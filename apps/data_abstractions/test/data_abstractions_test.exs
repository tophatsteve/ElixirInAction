defmodule DataAbstractionsTest do
  use ExUnit.Case
  doctest DataAbstractions

  test "greets the world" do
    assert DataAbstractions.hello() == :world
  end
end

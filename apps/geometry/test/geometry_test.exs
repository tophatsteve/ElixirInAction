defmodule GeometryTest do
  use ExUnit.Case
  doctest Geometry

  test "area of square is side squared" do
    assert Geometry.Rectangle.area(5) == 25
  end

  test "area of circle is pi*r^2" do
    assert Geometry.Circle.area(1) == 3.14159
    assert Geometry.Circle.area(2) == 12.56636
  end

  test "circumference of circle is 2*r*pi" do
    assert Geometry.Circle.circumference(1) == 6.28318
  end
end

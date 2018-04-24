defmodule Geometry do
  @moduledoc "Implements geometry operations for circles and rectangles"

  def rectangle_area(a, b) do
    a * b
  end

  def square_area(a) do
    rectangle_area(a, a)
  end

  defmodule Rectangle do
    # -> Geometry.Rectange.area
    def area(a), do: area(a, a)
    def area(a, b), do: a * b
  end

  defmodule Circle do
    @moduledoc "Implements basic circle functions"
    @pi 3.14159

    @doc "Computes the area of a circle"
    @spec area(number) :: number
    def area(r), do: r * r * @pi

    @doc "Computes the circumference of a circle"
    @spec circumference(number) :: number
    def circumference(r), do: 2 * r * @pi
  end
end

defmodule DataTypes do
  def keyword_lists(day) do
    days = [monday: 1, tuesday: 2, wednesday: 3]
    # optional 3rd parameter to Keyword.get is default value
    {days[day], Keyword.get(days, day, :not_found)}
  end

  def maps(root) do
    squares = %{1 => 1, 2 => 4, 3 => 9}
    squares2 = Map.new([{1, 1}, {2, 4}, {3, 9}])
    # optional 3rd parameter to Map.get is default value
    {squares[root], Map.get(squares2, root, :not_found)}
  end

  def mapset(day) do
    days = MapSet.new([:monday, :tuesday, :wednesday, :thursday, :friday])
    MapSet.member?(days, day)
  end
end

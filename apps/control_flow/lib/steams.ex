defmodule Streams do
  def to_stream(m) do
    Stream.map(m, fn x -> x end)
  end
end

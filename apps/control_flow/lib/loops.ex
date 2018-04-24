defmodule Loops do
  defmodule NaturalNums do
    def print(0), do: []

    def print(n) when n < 0 do
      [n | print(n + 1)]
    end

    def print(n) do
      [n | print(n - 1)]
    end

    def print_tail_call(n) do
      print_tail_call_f(n, [])
    end

    defp print_tail_call_f(0, current) do
      current
    end

    defp print_tail_call_f(n, current) when n < 0 do
      print_tail_call_f(n + 1, [n | current])
    end

    defp print_tail_call_f(n, current) do
      print_tail_call_f(n - 1, [n | current])
    end
  end

  defmodule Practice do
    def list_len([]) do
      0
    end

    def list_len([_head | tail]) do
      1 + list_len(tail)
    end

    def range(f, f) do
      [f]
    end

    def range(f, t) when t < f do
      [f | range(f - 1, t)]
    end

    def range(f, t) do
      [f | range(f + 1, t)]
    end

    def positive([]) do
      []
    end

    def positive([h | t]) do
      if h > 0 do
        [h | positive(t)]
      else
        positive(t)
      end
    end

    defmodule TailRecursive do
      def list_len(l) do
        list_len_i(0, l)
      end

      defp list_len_i(c, []) do
        c
      end

      defp list_len_i(c, [_head | tail]) do
        list_len_i(c + 1, tail)
      end

      def range(f, t) do
        range_i(f, t, [])
      end

      def range_i(f, f, current) do
        [f | current]
      end

      def range_i(f, t, current) when t < f do
        range_i(f, t + 1, [t | current])
      end

      def range_i(f, t, current) do
        range_i(f, t - 1, [t | current])
      end

      def positive(l) do
        positive_i(l, [])
      end

      def positive_i([], result) do
        result
      end

      def positive_i([h | t], result) do
        if h > 0 do
          positive_i(t, [h | result])
        else
          positive_i(t, result)
        end
      end
    end
  end
end

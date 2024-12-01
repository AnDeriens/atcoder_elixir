defmodule Main do
  def main() do
    input_all()
    |> solve()
    |> IO.puts()
  end

  def solve([n, s]) do
    if rem(String.to_integer(n), 2) == 0 do
      "No"
    else
      result = String.split(s, "/")
      [first, second] = result
      len = String.length(first)
      if String.duplicate("1", len) == first && String.duplicate("2", len) == second do
        "Yes"
      else
        "No"
      end
    end
  end

  def debug(x) do
    IO.inspect(x)
  end

  def input_all do
    IO.read(:stdio, :eof)
    |> String.split("\n", trim: true)
  end
end

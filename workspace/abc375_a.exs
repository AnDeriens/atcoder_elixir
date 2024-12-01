defmodule Main do
  def main() do
    input_all()
    |> solve()
    |> IO.puts()
  end

  def solve([n, s]) do
    # ここに答えを実装
    e = elem(Integer.parse(n), 0) - 2
    if e < 1 do
      0
    else
      s_list = String.codepoints(s) |> List.to_tuple()
      Enum.reduce(0..e-1, 0, fn m, acc ->
        if elem(s_list, m) == "#" && elem(s_list, m + 1) == "." && elem(s_list, m + 2) == "#" do
          acc + 1
        else
          acc
        end
      end)
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

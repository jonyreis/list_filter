defmodule ListFilter do
  def call(list) do
    list
    |> Enum.flat_map(fn string ->
      case Integer.parse(string) do
        {int, _rest} -> [int]
        :error -> []
      end
    end)
    |> Enum.map(fn n -> odd(n) end)
    |> Enum.sum()
  end

  defp odd(value) do
    if rem(value, 2) != 0 do
      1
    else
      0
    end
  end
end

defmodule ListFilter do
  def call(list) do
    list
    |> Enum.flat_map(fn string ->
      case Integer.parse(string) do
        {int, _rest} -> [int]
        :error -> []
      end
    end)
  end

  @doc """
  Hello world.

  ## Examples

      iex> ListFilter.hello()
      :world

  """
  def hello do
    :world
  end
end

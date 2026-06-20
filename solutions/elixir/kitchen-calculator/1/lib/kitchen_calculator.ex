
defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    {_, numeric} = volume_pair
    numeric
  end

    def to_milliliter({:cup, v}), do: {:milliliter, v * 240}
    def to_milliliter({:fluid_ounce, v}), do: {:milliliter, v * 30}
    def to_milliliter({:teaspoon, v}), do: {:milliliter, v * 5}
    def to_milliliter({:tablespoon, v}), do: {:milliliter, v * 15}
    def to_milliliter({:milliliter, v}), do: {:milliliter, v}

  def from_milliliter(volume_pair, unit) do
    cond do
      unit == :cup -> {unit, get_volume(volume_pair) / 240}
      unit == :fluid_ounce -> {unit, get_volume(volume_pair) / 30}
      unit == :teaspoon -> {unit, get_volume(volume_pair) / 5}
      unit == :tablespoon -> {unit, get_volume(volume_pair) / 15}
      unit == :milliliter -> {unit, get_volume(volume_pair)}
    end
  end

  def convert(volume_pair, unit) do
    volume_pair |> to_milliliter() |> from_milliliter(unit)
  end
end
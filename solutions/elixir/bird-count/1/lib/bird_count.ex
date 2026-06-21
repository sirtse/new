defmodule BirdCount do
  def today([]) do
    nil
  end
  def today(list) do
    [head | _tail] = list
    head
  end

  def increment_day_count([]) do
    [1]
  end

  def increment_day_count(list) do
    [head | tail] = list
    [head + 1 | tail]
  end

  def has_day_without_birds?([]), do: false
  def has_day_without_birds?([0 | _tail]), do: true
  def has_day_without_birds?([_head | tail]), do: has_day_without_birds?(tail)

  def total(list), do: total(list, 0)
  def total([], acc), do: acc
  def total([head | tail], acc), do: total(tail, acc + head)

  def busy_days(list), do: busy_days(list, 0)
  def busy_days([], acc), do: acc
  def busy_days([head | tail], acc) when head >= 5, do: busy_days(tail, acc + 1)
  def busy_days([head | tail], acc), do: busy_days(tail, acc)
end

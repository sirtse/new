defmodule HighSchoolSweetheart do
  def first_letter(name) do
    name |> String.trim_leading() |> String.first()
  end

  def initial(name) do
    String.upcase(first_letter(name)) <> "."
  end

  def initials(full_name) do
    [first, last] = String.split(full_name)
    initial(first) <> " " <> initial(last)
  end

  def pair(full_name1, full_name2) do
    initials1 = initials(full_name1)
    initials2 = initials(full_name2)

    """
    ❤-------------------❤
    |  #{initials1}  +  #{initials2}  |
    ❤-------------------❤
    """
  end
end

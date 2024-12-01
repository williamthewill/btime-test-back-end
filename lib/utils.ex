defmodule Utils do
  def convert!("true"), do: true
  def convert!("false"), do: false
  def convert!(nil), do: nil
  def convert!(bool) when is_boolean(bool), do: bool
  def convert!(num), do: String.to_integer(num)

  @doc """
  Convert a date with the "yyyy-mm-dd" format to a naivedatetime

  ## Parameters

    - string_date: Date in string format
  """
  def string_to_date!(string_date, hour \\ 0, minute \\ 0, second \\ 0) do
    [year, month, day] =
      string_date
      |> String.split("-")
      |> Enum.map(&convert!(&1))

    NaiveDateTime.new!(year, month, day, hour, minute, second)
  end

  @doc """
  Transform date in string day-month-year elixir.
  Example: 01-09-2020

  ## Parameters

    - date: Date in dd/mm/yyyy.
  """
  def pattern_date_dd_mm_yyyy(date) do
    month = to_string(date.month)
    day = to_string(date.day)

    pattern_month =
      if(String.length(month) == 1,
        do: "0" <> month,
        else: month
      )

    day <> "-" <> pattern_month <> "-" <> to_string(date.year)
  end

  @doc """
  Transform string in date string year-month-day elixir.
  Example: 01-09-2020 -> 2020-09-01

  ## Parameters

    - date: dd/mm/yyyy in Date.
  """
  def pattern_str_date_dd_mm_yyyy(str_date) do
    [day, month, year] = String.split(str_date, "/")

    year <> "-" <> month <> "-" <> day
  end
end

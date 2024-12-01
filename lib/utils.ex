defmodule Utils do
  @doc """
  Transform string in date string year-month-day elixir.
  Example: 01/09/2020 -> 2020-09-01

  Returns `dd-mm-yyyy`

  ## Examples

      iex> str_date = "01/09/2020"
      "01/09/2020"
      iex> pattern_str_date_dd_mm_yyyy(str_date)
      "2020-09-01"

      iex> str_date = "01-09-2020"
      "01-09-2020"
      iex> pattern_str_date_dd_mm_yyyy(str_date)
      ** (MatchError) no match of right hand side value: ["01-09-2020"]

  """
  def pattern_str_date_dd_mm_yyyy(str_date) do
    [day, month, year] = String.split(str_date, "/")

    year <> "-" <> month <> "-" <> day
  end
end

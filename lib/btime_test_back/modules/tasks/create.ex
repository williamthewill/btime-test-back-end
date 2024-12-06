defmodule BtimeTestBack.Modules.Tasks.Create do
  alias BtimeTestBack.Repo

  def call(params) do
    params
    |> Repo.insert()
  end
end

defmodule BtimeTestBack.Modules.Tasks.Create do
  alias BtimeTestBack.{Repo, Tasks}

  def call(params) do
    params
    |> Tasks.changeset()
    |> Repo.insert()
  end
end

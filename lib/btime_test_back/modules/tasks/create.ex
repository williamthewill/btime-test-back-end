defmodule BtimeTestBack.Modules.Tasks.Create do
  alias BtimeTestBack.{Repo, Tasks}

  # %{name: "task 1", execution_date: NaiveDateTime.utc_now(), execution_place: "São Paulo", priority: "critica", description: "task test"}
  def call(params) do
    params
    |> Tasks.changeset()
    |> Repo.insert()
  end
end

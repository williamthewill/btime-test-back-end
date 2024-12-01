defmodule BtimeTestBack.Modules.Tasks.GetAll do
  alias BtimeTestBack.{Repo, Tasks}

  # %{name: "task 1", execution_date: NaiveDateTime.utc_now(), execution_place: "São Paulo", priority: "critica", description: "task test"}

  import Ecto.Query

  def call() do
    query =
      from(t in Tasks,
        select: %{
          id: t.id,
          task_id: t.id,
          name: t.name,
          priority: t.priority,
          description: t.description,
          execution_date: t.execution_date,
          execution_place: t.execution_place,
          files: t.files,
          status: t.status
        }
      )

    case Repo.all(query) do
      nil -> {:error, "Tasks not found"}
      items -> {:ok, items}
    end
  end
end

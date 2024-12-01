defmodule BtimeTestBack.Modules.Tasks.Get do
  alias BtimeTestBack.{Repo, Tasks}

  import Ecto.Query

  # %{name: "task 1", execution_date: NaiveDateTime.utc_now(), execution_place: "São Paulo", priority: "critica", description: "task test"}

  def call(id) do
    query =
      from(t in Tasks,
        where: ^id == t.id,
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

    case Repo.one(query) do
      nil -> {:error, "Item not found"}
      item -> {:ok, item}
    end
  end
end

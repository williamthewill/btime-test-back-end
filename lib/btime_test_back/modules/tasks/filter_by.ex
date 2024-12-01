defmodule BtimeTestBack.Modules.Tasks.FilterBy do
  alias BtimeTestBack.{Repo, Tasks}

  import Ecto.Query

  def call(filter, to_combine) do
    sub_query =
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

    with {:ok, query} <- mount_query(filter, to_combine, sub_query) do
      {:ok, query}
    else
      _ -> {:error, "Tasks not found"}
    end
  end

  def mount_query("execution_place", to_combine, query) do
    sub_query = "%#{to_combine}%"

    {:ok,
     from(t in query,
       where: ilike(t.execution_place, ^sub_query)
     )}
  end

  def mount_query("priority", to_combine, query) do
    changesetTasks = Tasks.changeset_priority(%{priority: to_combine})

    case changesetTasks.valid? do
      true ->
        {:ok,
         from(t in query,
           where: t.priority == ^to_combine
         )}

      _ ->
        {:error, "enum priority undefined"}
    end
  end

  def mount_query("execution_date", to_combine, query) do
    {_status, date} =
      Utils.pattern_str_date_dd_mm_yyyy(to_combine)
      |> Date.from_iso8601()

    {:ok,
     from(t in query,
       where: fragment("execution_date::date") == ^date
     )}
  end

  def mount_query(_, _to_combine, _query) do
    {:error, "enum priority undefined"}
  end
end

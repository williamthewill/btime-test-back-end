defmodule BtimeTestBack.Modules.Tasks.Search do
  alias BtimeTestBack.{Tasks}

  import Ecto.Query

  def call(substring) do
    like_sub = "%#{substring}%"

    # query =
    from(t in Tasks,
      where: ilike(t.name, ^like_sub) or ilike(t.description, ^like_sub),
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
  end
end

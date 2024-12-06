defmodule BtimeTestBack.Modules.Tasks.GetPaginated do
  import Ecto.Query
  alias BtimeTestBack.{Repo, Tasks}

  def call(
        %{substring: substring, is_search: true} =
          pagination_args
      ) do
    BtimeTestBack.Modules.Tasks.Search.call(substring)
    |> order_by(desc: :inserted_at)
    |> Absinthe.Relay.Connection.from_query(fn q -> Repo.all(q) end, pagination_args)
  end

  def call(
        %{filter: filter, to_combine: to_combine, is_filter: true} =
          pagination_args
      ) do
    with {:ok, query} <- BtimeTestBack.Modules.Tasks.FilterBy.call(filter, to_combine) do
      query
      |> order_by(desc: :inserted_at)
      |> Absinthe.Relay.Connection.from_query(&Repo.all/1, pagination_args)
    end
  end

  def call(pagination_args) do
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
    |> order_by(desc: :inserted_at)
    |> Absinthe.Relay.Connection.from_query(&Repo.all/1, pagination_args)
  end
end

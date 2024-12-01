defmodule BtimeTestBackWeb.Schema.Types.Root do
  use Absinthe.Schema.Notation
  use Absinthe.Relay.Schema.Notation, :classic

  alias BtimeTestBackWeb.Resolvers.Task, as: TaskResolver

  import_types BtimeTestBackWeb.Schema.Types.Task

  object :root_query do
    field :get_task, type: :task do
      arg :id, non_null(:id)

      resolve &TaskResolver.get/2
    end

    field :get_all, type: list_of(:task) do
      resolve &TaskResolver.get_all/2
    end

    field :search_tasks, type: list_of(:task) do
      arg :substring, non_null(:string)

      resolve &TaskResolver.search_tasks/2
    end

    field :filter_by, type: list_of(:task) do
      arg :filter, non_null(:string)
      arg :to_combine, non_null(:string)

      resolve &TaskResolver.filter_by/2
    end

    connection field :get_paginated, node_type: :task do
      arg :substring, :string
      arg :filter, :string
      arg :to_combine, :string
      arg :is_search, :boolean
      arg :is_filter, :boolean

      resolve &TaskResolver.get_paginated/2
    end
  end

  node interface do
    resolve_type fn _, _ -> :task end
  end

  connection(node_type: :task)
end

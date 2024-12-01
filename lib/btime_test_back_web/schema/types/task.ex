defmodule BtimeTestBackWeb.Schema.Types.Task do
  use Absinthe.Schema.Notation
  use Absinthe.Relay.Schema.Notation, :classic

  # object :task do
  #   field :id, non_null(:id)
  #   field :name, non_null(:string)
  #   field :execution_date, non_null(:string)
  #   field :execution_place, non_null(:string)
  #   field :priority, non_null(:string)
  #   field :description, non_null(:string)
  #   field :files, non_null(:id)
  #   field :status, non_null(:string)
  # end

  node object(:task) do
    field :task_id, non_null(:id)
    field :name, non_null(:string)
    field :execution_date, non_null(:string)
    field :execution_place, non_null(:string)
    field :priority, non_null(:string)
    field :description, non_null(:string)
    field :files, :id
    field :status, non_null(:string)
  end
end

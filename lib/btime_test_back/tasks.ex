defmodule BtimeTestBack.Tasks do
  alias BtimeTestBack.TasksFiles
  use Ecto.Schema
  import Ecto.Changeset

  @required_fields [:name, :execution_date, :execution_place, :priority, :description, :status]
  @fields @required_fields

  schema "tasks" do
    field :name, :string
    field :priority, Ecto.Enum, values: [:baixa, :alta, :critica]
    field :description, :string
    field :execution_date, :naive_datetime
    field :execution_place, :string
    field :status, Ecto.Enum, values: [:scheduled, :executed]

    embeds_one :files, TasksFiles

    timestamps(type: :utc_datetime)
  end

  def changeset(attrs) do
    %__MODULE__{}
    |> cast(attrs, @fields)
    |> cast_embed(:files)
    |> validate_required(@required_fields)
  end

  def changeset_priority(%{priority: _} = attrs) do
    %__MODULE__{}
    |> cast(attrs, [:priority])
  end
end

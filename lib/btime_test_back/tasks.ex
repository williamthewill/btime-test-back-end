defmodule BtimeTestBack.Tasks do
  use Ecto.Schema
  import Ecto.Changeset

  @required_fields [:name, :execution_date, :execution_place, :priority, :description, :status]
  @fields @required_fields ++ [:files]

  schema "tasks" do
    field :name, :string
    field :priority, Ecto.Enum, values: [:baixa, :alta, :critica]
    field :description, :string
    field :execution_date, :naive_datetime
    field :execution_place, :string
    field :files, :string
    field :status, Ecto.Enum, values: [:scheduled, :executed]

    timestamps(type: :utc_datetime)
  end

  def changeset(attrs) do
    %__MODULE__{}
    |> cast(attrs, @fields)
    |> validate_required(@required_fields)
  end

  def changeset_priority(%{priority: _} = attrs) do
    %__MODULE__{}
    |> cast(attrs, [:priority])
  end
end

defmodule BtimeTestBack.Files do
  use Ecto.Schema
  import Ecto.Changeset

  @fields [:type, :value]

  schema "files" do
    field :type, :string
    field :value, :string

    belongs_to :tasks, BtimeTestBack.Tasks

    timestamps(type: :utc_datetime)
  end

  def changeset(attrs) do
    %__MODULE__{}
    |> cast(attrs, @fields)
    |> validate_required(@fields)
  end

  def changeset_priority(%{priority: _} = attrs) do
    %__MODULE__{}
    |> cast(attrs, [:priority])
  end
end

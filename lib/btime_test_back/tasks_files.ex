defmodule BtimeTestBack.TasksFiles do
  use BtimeTestBack.Schema
  import Ecto.Changeset

  @fields [:img]

  schema "files" do
    field :img, {:array, :string}
  end

  def changeset(files \\ %__MODULE__{}, attrs) do
    files
    |> cast(attrs, @fields)
    |> validate_required(@fields)
  end
end

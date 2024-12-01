defmodule BtimeTestBack.Repo.Migrations.CreateTasks do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :name, :string
      add :execution_date, :naive_datetime
      add :execution_place, :string
      add :priority, :string
      add :description, :text
      add :files, :string
      add :status, :string

      timestamps(type: :utc_datetime)
    end
  end
end

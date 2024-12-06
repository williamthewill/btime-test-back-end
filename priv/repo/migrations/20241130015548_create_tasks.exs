defmodule BtimeTestBack.Repo.Migrations.CreateTasks do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :name, :string
      add :execution_date, :naive_datetime
      add :execution_place, :string
      add :priority, :string
      add :description, :text
      add :status, :string
      add :files, :jsonb

      timestamps(type: :utc_datetime)
    end
  end
end

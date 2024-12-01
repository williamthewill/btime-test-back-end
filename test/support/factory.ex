defmodule BtimeTestBack.Factory do
  use ExMachina.Ecto, repo: BtimeTestBack.Repo

  def tasks_factory do
    %BtimeTestBack.Tasks{
      name: "Task 10",
      priority: :alta,
      description: "test description",
      execution_date: NaiveDateTime.utc_now() |> NaiveDateTime.truncate(:second),
      execution_place: "Nova Iguaçu",
      files: "banana",
      status: :executed
    }
  end
end

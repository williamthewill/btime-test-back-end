defmodule BtimeTestBack.Factory do
  use ExMachina.Ecto, repo: BtimeTestBack.Repo

  def tasks_factory do
    %BtimeTestBack.Tasks{
      name: "Task 1",
      priority: :baixa,
      description: "Lorem Ipsum is ",
      execution_date: NaiveDateTime.utc_now() |> NaiveDateTime.truncate(:second),
      execution_place: "Maringá",
      status: :scheduled
    }
  end
end

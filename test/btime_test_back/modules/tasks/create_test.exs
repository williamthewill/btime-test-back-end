defmodule BtimeTestBack.Modules.Tasks.CreateTest do
  use BtimeTestBack.DataCase, async: true

  alias BtimeTestBack.Tasks

  @invalid_params %{}
  @description "test"

  describe "changeset/2" do
    test "when params is valid, returns a valid changeset" do
      task = %{
        name: "Task 10",
        priority: :alta,
        description: @description,
        execution_date: NaiveDateTime.utc_now() |> NaiveDateTime.truncate(:second),
        execution_place: "Nova Iguaçu",
        files: "banana",
        status: :executed
      }

      changeset = task |> Tasks.changeset()

      assert changeset.valid?
    end

    test "when params is not valid, returns a invalid changeset" do
      changeset = @invalid_params |> Tasks.changeset()

      refute changeset.valid?
    end
  end
end

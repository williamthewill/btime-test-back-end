defmodule BtimeTestBack.Modules.Tasks.GetPaginatedTest do
  use BtimeTestBack.DataCase, async: true

  alias BtimeTestBack.Tasks
  import BtimeTestBack.Factory

  describe "call/2" do
    test "when returns total first is more then total nodes" do
      insert(:tasks)
      insert(:tasks)

      {status, response} =
        BtimeTestBack.Modules.Tasks.GetPaginated.call(%{
          substring: "task",
          is_search: true,
          first: 10
        })

      assert {:ok, _} = {status, response}
      assert Enum.count(response) == 2
    end

    test "when returns total first is lass then total nodes" do
      insert(:tasks)
      insert(:tasks)
      insert(:tasks)

      {status, response} =
        BtimeTestBack.Modules.Tasks.GetPaginated.call(%{
          substring: "task",
          is_search: true,
          first: 1
        })

      assert {:ok, _} = {status, response}
      assert Enum.count(response.edges) == 1
    end
  end
end

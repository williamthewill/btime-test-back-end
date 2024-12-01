defmodule BtimeTestBack.Modules.Tasks.GetPaginatedTest do
  use BtimeTestBack.DataCase, async: true

  import BtimeTestBack.Factory

  describe "call/2" do
    test "when returns total first is more then total nodes" do
      insert(:tasks)
      insert(:tasks)

      {status, response} =
        BtimeTestBack.Modules.Tasks.GetPaginated.call(%{
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
          first: 1
        })

      assert {:ok, _} = {status, response}
      assert Enum.count(response.edges) == 1
    end

    test "when is_search is activated and success return" do
      insert(:tasks)
      insert(:tasks)
      task = insert(:tasks)

      {_status, response} =
        BtimeTestBack.Modules.Tasks.GetPaginated.call(%{
          substring: task.name,
          is_search: true,
          first: 1
        })

      %{node: node_response} = List.first(response.edges)

      assert String.contains?(task.name, node_response.name) == true
    end

    test "when is_search is activated and empty return" do
      insert(:tasks)

      undefined_string = "****"

      {_status, response} =
        BtimeTestBack.Modules.Tasks.GetPaginated.call(%{
          substring: undefined_string,
          is_search: true,
          first: 1
        })

      assert Enum.count(response.edges) == 0
    end

    test "when is_filter is activated and success return" do
      task = insert(:tasks)

      {_status, response} =
        BtimeTestBack.Modules.Tasks.GetPaginated.call(%{
          filter: "priority",
          to_combine: task.priority,
          is_filter: true,
          first: 1
        })

      %{node: node_response} = List.first(response.edges)

      assert task.priority == node_response.priority
    end
  end
end

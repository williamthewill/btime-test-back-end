defmodule BtimeTestBack.Modules.Tasks.GetTest do
  use BtimeTestBack.DataCase, async: true

  import BtimeTestBack.Factory

  describe "call/1" do
    test "when returns corretly" do
      task = insert(:tasks)

      {status, response} = BtimeTestBack.Modules.Tasks.Get.call(task.id)

      assert {:ok, _} = {status, response}
      assert response.id == task.id
    end
  end
end

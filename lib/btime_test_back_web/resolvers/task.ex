defmodule BtimeTestBackWeb.Resolvers.Task do
  def get(%{id: task_id}, _context), do: BtimeTestBack.Modules.Tasks.Get.call(task_id)
  def get_all(%{}, _context), do: BtimeTestBack.Modules.Tasks.GetAll.call()

  def get_paginated(pagination_args, _context),
    do: BtimeTestBack.Modules.Tasks.GetPaginated.call(pagination_args)

  def search_tasks(%{substring: substring}, _context),
    do: BtimeTestBack.Modules.Tasks.Search.call(substring)

  def filter_by(%{filter: filter, to_combine: to_combine}, _context),
    do: BtimeTestBack.Modules.Tasks.FilterBy.call(filter, to_combine)
end

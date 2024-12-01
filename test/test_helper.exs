ExUnit.start()
Ecto.Adapters.SQL.Sandbox.mode(BtimeTestBack.Repo, :manual)

{:ok, _} = Application.ensure_all_started(:ex_machina)

## Mox Config
Mox.Server.start_link([])

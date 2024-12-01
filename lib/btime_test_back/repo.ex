defmodule BtimeTestBack.Repo do
  use Ecto.Repo,
    otp_app: :btime_test_back,
    adapter: Ecto.Adapters.Postgres
end

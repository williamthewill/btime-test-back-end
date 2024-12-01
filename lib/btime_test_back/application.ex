defmodule BtimeTestBack.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      BtimeTestBackWeb.Telemetry,
      BtimeTestBack.Repo,
      {DNSCluster, query: Application.get_env(:btime_test_back, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: BtimeTestBack.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: BtimeTestBack.Finch},
      # Start a worker by calling: BtimeTestBack.Worker.start_link(arg)
      # {BtimeTestBack.Worker, arg},
      # Start to serve requests, typically the last entry
      BtimeTestBackWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: BtimeTestBack.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    BtimeTestBackWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end

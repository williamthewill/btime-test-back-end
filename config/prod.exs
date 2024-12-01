import Config

# Configures Swoosh API Client
config :swoosh, api_client: Swoosh.ApiClient.Finch, finch_name: BtimeTestBack.Finch

# Disable Swoosh Local Memory Storage
config :swoosh, local: false

# Do not print debug messages in production
config :logger, level: :info

# Runtime production configuration, including reading
# of environment variables, is done on config/runtime.exs.
config :btime_test_back, BtimeTestBack.Repo,
  username: System.get_env("DB_USERNAME", ""),
  password: System.get_env("DB_PASSWORD", ""),
  hostname: System.get_env("DB_NAME", ""),
  database: System.get_env("DB_HOST", ""),
  stacktrace: true,
  show_sensitive_data_on_connection_error: true,
  pool_size: 10

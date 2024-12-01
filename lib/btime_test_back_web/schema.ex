defmodule BtimeTestBackWeb.Schema do
  use Absinthe.Schema
  use Absinthe.Relay.Schema, :classic

  import_types BtimeTestBackWeb.Schema.Types.Root

  query do
    import_fields :root_query
  end
end

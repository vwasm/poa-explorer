use Mix.Config

# Configure your database
config :explorer, Explorer.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "explorer_dev",
  hostname: "localhost",
  username: "ewasm",
  password: "200710935",
  loggers: [],
  pool_size: 20,
  pool_timeout: 60_000

import_config "dev.secret.exs"

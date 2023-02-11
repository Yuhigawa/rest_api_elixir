import Config

config :rest_api, port: 9090

config :rest_api, ecto_repos: [RestApi.Postgres]
config :rest_api, RestApi.Postgres,
  database: "elixir_postgres",
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  pool_size: 3

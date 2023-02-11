# RestApi

**TODO: Add description**

## initialization

```bash
<!-- For docker with Postgres -->
~> docker compose up -d
~> docker compose exec postgres psql -U postgres -c "CREATE DATABASE elixir_postgres;"
~> docker compose exec postgres psql -U postgres -c "GRANT ALL PRIVILEGES ON elixir_postgres TO postgres;"
```

```bash
<!-- For Elixir -->
~> mix dps.get
~> mix ecto.create
~> mix ecto.migrate
~> iex -S mix run
```

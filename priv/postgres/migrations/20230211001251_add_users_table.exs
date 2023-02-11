defmodule RestApi.Postgres.Migrations.AddUsersTable do
  use Ecto.Migration

  def up do
    create table("users") do
      add :name, :string, null: false
      add :password, :string, null: false
      add :email, :string, null: false
      add :age, :integer

      timestamps()
    end
  end

  def down do
    drop table("users")
  end
end

defmodule RestApi.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :name, :string
    field :email, :string
    field :password, :string
    field :age, :integer

    timestamps()
  end

  def changeset(user, params \\ %{}) do
    user
      |> cast(params, [:name, :email, :age, :password])
      |> validate_required([:name, :password, :email])
      |> validate_format(:email, ~r/@/)
      |> unique_constraint(:email)
  end
end

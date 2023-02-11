defmodule RestApi.Insert do
  alias RestApi.{User, Postgres}

  def create_user(params) do
    user = User.changeset(%User{}, params)
    Postgres.insert!(user)
  end
end

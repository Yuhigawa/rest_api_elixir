defmodule RestApi.Router.UserRouter do
  use Plug.Router
  require Logger

  alias RestApi.Insert

  plug :match
  plug :dispatch

  plug Plug.Parsers,
    parsers: [:json, :urlencoded],
    pass: ["application/json"],
    json_decoder: Jason

  post "/" do
    {:ok, body, conn} = read_body(conn)
    params = Jason.decode!(body)

    Insert.create_user(params)

    conn
      |> put_resp_content_type("application/json")
      |> send_resp(201, Jason.encode!(%{ ola: "fodase"}))
  end
end

defmodule RestApi.Router do
  use Plug.Router
  alias RestApi.Router.{UserRouter}

  plug(Plug.Logger)
  plug(:match)
  plug(:dispatch)
  plug(Plug.Parsers,
    parsers: [:json],
    pass: ["application/json"],
    json_decoder: Jason
  )

  forward "/user", to: UserRouter

  get "/" do
    send_resp(conn, 200, "ok")
  end

  match _ do
    send_resp(conn, 404, "not found")
  end
end

defmodule RestApiTest.Router do
  use ExUnit.Case, async: true
  doctest RestApi

  use Plug.Test

  @opts RestApi.Router.init([])

  test "return ok" do
    conn = conn(:get, "/")
    conn = RestApi.Router.call(conn, @opts)

    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_body == "ok"
  end
end

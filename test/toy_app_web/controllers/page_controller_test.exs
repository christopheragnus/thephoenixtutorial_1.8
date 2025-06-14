defmodule ToyAppWeb.PageControllerTest do
  use ToyAppWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, ~p"/")
    assert html_response(conn, 200) =~ "home page"
  end
end

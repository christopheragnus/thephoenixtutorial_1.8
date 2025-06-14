defmodule ToyAppWeb.StaticPageControllerTest do
  use ToyAppWeb.ConnCase

  test "should get home", %{conn: conn} do
    conn = get(conn, ~p"/static_pages/home")

    html_response(conn, 200)
    |> assert_select("title", "Home | Phoenix Tutorial Sample App")
  end

  test "should get help", %{conn: conn} do
    conn = get(conn, ~p"/static_pages/help")

    html_response(conn, 200)
    |> assert_select("title", "Help | Phoenix Tutorial Sample App")
  end

  test "should get about title", %{conn: conn} do
    conn = get(conn, ~p"/static_pages/about")

    html_response(conn, 200)
    |> assert_select("title", "About | Phoenix Tutorial Sample App")
  end

  test "should get contact title", %{conn: conn} do
    conn = get(conn, ~p"/static_pages/contact")

    html_response(conn, 200)
    |> assert_select("title", "Contact | Phoenix Tutorial Sample App")
  end

  test "should get about", %{conn: conn} do
    conn = get(conn, ~p"/static_pages/about")

    assert conn.status == 200
  end
end

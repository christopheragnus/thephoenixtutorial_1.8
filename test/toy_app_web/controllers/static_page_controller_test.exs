defmodule ToyAppWeb.StaticPageControllerTest do
  use ToyAppWeb.ConnCase

  test "should get home", %{conn: conn} do
    conn = get(conn, ~p"/home")

    assert html_response(conn, 200)
           |> assert_select("title", "Phoenix Tutorial Sample App")
  end

  test "should get help", %{conn: conn} do
    conn = get(conn, ~p"/help")

    assert html_response(conn, 200)
           |> assert_select("title", "Help | Phoenix Tutorial Sample App")
  end

  test "should get about title", %{conn: conn} do
    conn = get(conn, ~p"/about")

    assert html_response(conn, 200)
           |> assert_select("title", "About | Phoenix Tutorial Sample App")
  end

  test "should get about", %{conn: conn} do
    conn = get(conn, ~p"/about")
    assert conn.status == 200
  end

  test "should get contact", %{conn: conn} do
    conn = get(conn, ~p"/contact")

    assert html_response(conn, 200)
           |> assert_select("title", "Contact | Phoenix Tutorial Sample App")
  end

  test "layout links", %{conn: conn} do
    conn = get(conn, ~p"/")

    html_response(conn, 200)
    |> assert_select("a[href='/home']", count: 2)
    |> assert_select("a[href='/help']")
    |> assert_select("a[href='/about']")
    |> assert_select("a[href='/contact']")
  end
end

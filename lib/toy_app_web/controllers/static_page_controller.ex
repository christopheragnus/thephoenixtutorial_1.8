defmodule ToyAppWeb.StaticPageController do
  use ToyAppWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
    # or if you don't want a specific layout for this page:
    # render(conn, :home, layout: false)
  end

  def help(conn, _params) do
    render(conn, :help)
  end

  def about(conn, _params) do
    render(conn, :about)
  end

  def contact(conn, _params) do
    render(conn, :contact)
  end
end

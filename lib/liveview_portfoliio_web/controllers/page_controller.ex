defmodule LiveviewPortfoliioWeb.PageController do
  use LiveviewPortfoliioWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, page_title: "Welcome")
  end

  def about_me(conn, _params) do
    render(conn, :about_me, page_title: "About Me")
  end

  def work(conn, _params) do
    render(conn, :work, page_title: "Work")
  end

  def blog(conn, _params) do
    render(conn, :blog, page_title: "Blog")
  end
end

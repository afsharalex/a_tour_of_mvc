defmodule BudgieBudgetWeb.PageController do
  use BudgieBudgetWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

defmodule BudgieBudget.Repo do
  use Ecto.Repo,
    otp_app: :budgie_budget,
    adapter: Ecto.Adapters.Postgres
end

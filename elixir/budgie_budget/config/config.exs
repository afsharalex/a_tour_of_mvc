# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :budgie_budget,
  ecto_repos: [BudgieBudget.Repo]

# Configures the endpoint
config :budgie_budget, BudgieBudgetWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "RlRBeyM/uEHYX4/Vn0E4iMIL7L+0+C2ooWgI5zkkhOi9qYY4jk2lRA+pgpcyWAwT",
  render_errors: [view: BudgieBudgetWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BudgieBudget.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

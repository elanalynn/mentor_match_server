# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :mm_server,
  ecto_repos: [MmServer.Repo]

# Configures the endpoint
config :mm_server, MmServer.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "zw8SYhE3ady9FCwOfjQaILGI6WXe42J1httWk4jD1iDz+wq87hZNc3Eui4Oh8cNH",
  render_errors: [view: MmServer.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MmServer.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :mmserver,
  ecto_repos: [Mmserver.Repo]

# Configures the endpoint
config :mmserver, Mmserver.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "QhKtzWYQQvFNmuOuwKxGcRcRJCfWRZFUy+yanSgZECZ17XdtntzTaoJ4Z9XYn/4/",
  render_errors: [view: Mmserver.ErrorView, accepts: ~w(json)],
  pubsub: [name: Mmserver.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix, :format_encoders,
  "json-api": Poison

config :plug, :mimes, %{
  "application/vnd.api+json" => ["json-api"]
}

config :guardian, Guardian,
  allowed_algos: ["HS512"], # optional
  verify_module: Guardian.JWT,  # optional
  issuer: "Peepchat",
  ttl: { 30, :days },
  verify_issuer: true, # optional
  secret_key: System.get_env("GUARDIAN_SECRET") || "cvA2+3wZ8NRClaSCG4K1dGW8Q675qjYWhSGG6dyTZXI3MEW6Nli82AL0+5N1Y6J0",
  serializer: Peepchat.GuardianSerializer

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :excluster,
  ecto_repos: [Excluster.Repo]

# Configures the endpoint
config :excluster, ExclusterWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "9CE1roB7NWqCka3U0gNbTLuww4b4c3wRnv4pdQvbAvNt1tCopjiaCXTyORorR1ll",
  render_errors: [view: ExclusterWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Excluster.PubSub,
  live_view: [signing_salt: "Xl2fjWT+"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :busi_api,
  ecto_repos: [BusiApi.Repo]

# Configures the endpoint
config :busi_api, BusiApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "kKltu+pQxsACDxvl4Cp6967l74bYawtUMTxHgylRL1LHqr2greGntz54k7Csi9E+",
  render_errors: [view: BusiApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: BusiApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :busi_api, BusiApiWeb.Auth.Guardian,
  issuer: "busi_api",
  secret_key: "zfg7np71gqLAh/9te0Tkg4P/VEcoWB5a/KEwztCBh+1YApKmZUdUI86CI8rbdnV4"

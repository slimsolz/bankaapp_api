# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :bankaapp_api,
  ecto_repos: [BankaappApi.Repo]

# Configures the endpoint
config :bankaapp_api, BankaappApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: System.get_env("SECRET_KEY_BASE"),
  render_errors: [view: BankaappApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: BankaappApi.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :bankaapp_api, BankaappApiWeb.Auth.Guardian,
  issuer: "bankaapp_api",
  secret_key: "Qa34JWzbRA19lvGs3ih/qHuDb7cNVMRh1909WdLaVT9UJMzo6p9b132b+Y7uSEyn"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

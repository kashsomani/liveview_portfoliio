import Config

config :liveview_portfoliio,
  generators: [timestamp_type: :utc_datetime]

config :liveview_portfoliio, LiveviewPortfoliioWeb.Endpoint,
  url: [host: "localhost"],
  adapter: Bandit.PhoenixAdapter,
  render_errors: [
    formats: [html: LiveviewPortfoliioWeb.ErrorHTML, json: LiveviewPortfoliioWeb.ErrorJSON],
    layout: false
  ],
  pubsub_server: LiveviewPortfoliio.PubSub,
  live_view: [signing_salt: "Svw+AHwQ"]

config :liveview_portfoliio, LiveviewPortfoliio.Mailer, adapter: Swoosh.Adapters.Local

config :esbuild,
  version: "0.17.11",
  liveview_portfoliio: [
    args:
      ~w(js/app.js --bundle --target=es2017 --outdir=../priv/static/assets --external:/fonts/* --external:/images/*),
    cd: Path.expand("../assets", __DIR__),
    env: %{"NODE_PATH" => Path.expand("../deps", __DIR__)}
  ]

config :tailwind,
  version: "3.4.3",
  liveview_portfoliio: [
    args: ~w(
      --config=tailwind.config.js
      --input=css/app.css
      --output=../priv/static/assets/app.css
    ),
    cd: Path.expand("../assets", __DIR__)
  ]

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix, :json_library, Jason

import_config "#{config_env()}.exs"

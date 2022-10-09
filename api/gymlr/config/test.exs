import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :gymlr, GymlrWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "4jxw3NgjyD70UqtEpESZl4EANy/mJLdAxyzhV23x38Rw3QTWi9X5Q5HpnPCdEmqE",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

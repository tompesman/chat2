import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :chat2, Chat2.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "chat2_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :chat2, Chat2Web.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "bWGA1ZBzzZYb1zlMmv34Vm5NXhZk0CfBW7+TX1Iy0r+M8Q9bj/zsEBtDQogb7VSM",
  server: false

# In test we don't send emails.
config :chat2, Chat2.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

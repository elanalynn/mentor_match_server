use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or you later on).
config :mmserver, Mmserver.Endpoint,
  secret_key_base: "Eky819aIkROet5bx6UPo8Vx6pfGIxFj/oaOikmYvoPofBiICOGiHVk74gI2Sv5Of"

# Configure your database
config :mmserver, Mmserver.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "mmserver_prod",
  pool_size: 20

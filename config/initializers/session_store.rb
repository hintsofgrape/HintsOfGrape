# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_hintsofgrape_session',
  :secret      => '4d6bb2f9b8c624c55be77b66dfe8a6e9294dea73325979e7aa7dde73481e87abfd60cb26085ecfc0e7558009a35cf0ae971923ccdf240e789393e9dcbbd8a531'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

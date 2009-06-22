# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_fantasy_hockey_app_session',
  :secret      => '8f297ca906137520fcc9de8db31cca99bd5158c8b3ba077f28d9c0ae83af5ea60afd9e389108d23d714cd9e5a9d6971361e9580a56b7479df0202b9c48887e34'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

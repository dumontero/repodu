# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_owncard_session',
  :secret      => '0e57ff906d371211a4633fae865940bf371c1fa5fac2f9bb13fe395a1b0fa85c1b37cf0a2fcfd3268f02a0573e0269e0ed7b970148178ab8c9737b3094afb732'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

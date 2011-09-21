# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_lillywolf_and_drnu_session',
  :secret      => 'a110f749061d3a73fe6ca3aa8a9ff97a0d35d29549ecd57aefc25c63a89ae0c9129769dbc07a45fa76df2975078fe58eeb3f5f74fcd16f4575116829ce7ac7ba'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

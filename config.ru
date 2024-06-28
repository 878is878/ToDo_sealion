# This file is used by Rack-based servers to start the application.

require_relative "config/environment"

run Rails.application
Rails.application.load_server

config.hosts << 'https://withtodo.onrender.com'
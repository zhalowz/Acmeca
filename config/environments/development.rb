Acmeca::Application.configure do
   config.assets.compile = true
  # Do not compress assets
  config.assets.compress = false 
  # Expands the lines which load the assets
  config.assets.debug = true
   # Precompile *all* assets, except those that start with underscore
  config.assets.precompile << /(^[^_\/]|\/[^_])[^\/]*$/
  # Settings specified here will take precedence over those in config/environment.rb

  # In the development environment your application's code is reloaded on
  # every request.  This slows down response time but is perfect for development
  # since you don't have to restart the webserver when you make code changes.
  config.cache_classes = true
  config.serve_static_assets = true

  config.assets.digest = true

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  #config.action_view.debug_rjs             = true
  config.action_controller.perform_caching = true
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    :address => 'smtp.gmail.com',
    :port => 587,
    :authentication => 'plain',
    :user_name => "zhalowz@gmail.com",
    :password => "online9093711489"
}

config.action_mailer.perform_deliveries = true
config.action_mailer.raise_delivery_errors = false
#config.action_mailer.default_charset = "utf-8"


  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  config.action_mailer.default_url_options = {  :host => 'localhost:3000' }
  # Raise exception on mass assignment protection for Active Record models
  config.active_record.mass_assignment_sanitizer = :strict
 
  # Log the query plan for queries taking more than this (works
  # with SQLite, MySQL, and PostgreSQL)
  config.active_record.auto_explain_threshold_in_seconds = 0.5
  
end


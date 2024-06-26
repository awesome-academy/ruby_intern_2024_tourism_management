require_relative "boot"

require "rails/all"
require "rswag/api"
require "rswag/ui"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsTutorial
  class Application < Rails::Application
    config.load_defaults 7.0

    config.active_job.queue_adapter = :sidekiq

    config.i18n.default_locale = :en
    config.i18n.available_locales = [:en, :vi]
    config.action_view.embed_authenticity_token_in_remote_forms = true
    config.active_record.default_timezone = :utc
    config.time_zone = "UTC"
  end
end

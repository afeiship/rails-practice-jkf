require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsPracticeJkf
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    ## i18n config:
    config.i18n.available_locales = [:en, :'zh-CN']
    #I18n.config.enforce_available_locales = true
    config.i18n.default_locale = (ENV['LOCALE'] || 'zh-CN').to_sym
    config.time_zone = 'Beijing'
    
    # generators config:
    # config.generators.assets = false
    config.generators.helper = false
    config.generators do |g|
      g.test_framework :rspec, view_specs: false
    end

  end
end

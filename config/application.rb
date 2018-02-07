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

    ## password filter:
    config.action_controller.action_on_unpermitted_parameters = :log
    config.filter_parameters += [ :password ]
    
    # generators config:
    config.generators do |generator|
      generator.test_framework false
      generator.helper false
      generator.assets false
    end

  end
end

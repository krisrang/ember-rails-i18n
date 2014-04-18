require "ember-rails-i18n/version"
require "ember-rails-i18n/helper"

module EmberRailsI18n  
  class Engine < ::Rails::Engine
  end
  
  class Railtie < Rails::Railtie
    config.before_initialize do |app|
      config = app.config
      
      config.assets.paths += %W(#{config.root}/config/locales)
    end
  end
end

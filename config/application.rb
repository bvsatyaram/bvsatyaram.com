require File.expand_path('../boot', __FILE__)

require 'rails/all'

# If you have a Gemfile, require the gems listed there, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env) if defined?(Bundler)

module Bvsatyaram
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Custom directories with classes and modules you want to be autoloadable.
    # config.autoload_paths += %W(#{config.root}/extras)

    # Only load the plugins named here, in the order given (default is alphabetical).
    # :all can be used as a placeholder for all plugins not explicitly named.
    # config.plugins = [ :exception_notification, :ssl_requirement, :all ]

    # Activate observers that should always be running.
    # config.active_record.observers = :cacher, :garbage_collector, :forum_observer

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # JavaScript files you want as :defaults (application.js is always included).
     config.action_view.javascript_expansions[:defaults] =
       ['https://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js',
        'http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.6/jquery-ui.min.js',
        'jquery-ujs', 'jquery.tablesorter.min', 'jquery.lazy_styler',
        'jquery.beautyOfCode.js', 'jquery.lightbox-0.5.min']

    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding = "utf-8"

    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters += [:password]

    # Configure the Rack::Recaptcha middleware
    config.gem 'rack-recaptcha', :lib => 'rack/recaptcha'
    config.middleware.use Rack::Recaptcha,
      :public_key  => '6Ldb4MMSAAAAALJqy8UdTRX_qkd5_0v_karYor2s',
      :private_key => '6Ldb4MMSAAAAAEzg8N24Xh28phlkhyu9z-kOjozP'
  end
end

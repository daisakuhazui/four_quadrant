require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module FourQuadrantAppBeta
  class Application < Rails::Application
    config.load_defaults 5.1
  end
end

# active_adminを導入したところjQueryが正常に動作しなくなったため追記
# config.assets.precompile += %w[admin/active_admin.css admin/active_admin.js]

require 'rails'
require 'ember/auth/module/rememberable/source'
require 'ember/auth/module/rememberable/rails/version'
require 'ember/auth/module/rememberable/rails/engine'

module Ember
  module Auth
    module Module
      module Rememberable
        module Rails
          class Railtie < ::Rails::Railtie
            initializer 'ember-auth.module.rememberable.setup-vendor', :group => :all do |app|
              app.assets.append_path \
                File.expand_path('..', ::Ember::Auth::Module::Rememberable::Source.bundled_path)
            end
          end
        end
      end
    end
  end
end

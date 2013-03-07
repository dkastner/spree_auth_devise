module Spree
  module Auth
    class Engine < Rails::Engine
      #isolate_namespace Spree
      engine_name 'spree_auth'

      initializer "spree.auth.environment", :before => :load_config_initializers do |app|
        Spree::Auth::Config = Spree::AuthConfiguration.new
      end

      config.to_prepare do
        Dir.glob(File.join(File.dirname(__FILE__), "../../../app/**/*_decorator*.rb")) do |c|
          Rails.configuration.cache_classes ? require(c) : load(c)
        end

        ApplicationController.send :include, Spree::AuthenticationHelpers
      end

      initializer 'spree.auth.roles', :after=> :disable_dependency_loading do |app|
        Admin.class_eval do                     
          puts 'my prepare'                     
          def has_spree_role?(role)             
            puts "has role here #{!new_record?}"
            !new_record?                        
          end                                   
        end                                     
      end
    end
  end
end

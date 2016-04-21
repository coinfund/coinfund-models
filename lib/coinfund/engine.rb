module Coinfund
  class Engine < ::Rails::Engine
    isolate_namespace Coinfund
    config.generators.api_only = true

    # ensure all migrations automatically get run in the wrapper Rails app
    # unless wrapping prevents migrations from running twice in testing dummy app
    initializer 'coinfund.append_migrations' do |app|
      unless app.root.to_s.match root.to_s
        config.paths['db/migrate'].expanded.each do |path|
          app.config.paths['db/migrate'].push(path)
        end
      end
    end
    
  end
end

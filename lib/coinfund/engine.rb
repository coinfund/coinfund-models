module Coinfund
  class Engine < ::Rails::Engine
    isolate_namespace Coinfund
    config.generators.api_only = true
  end
end

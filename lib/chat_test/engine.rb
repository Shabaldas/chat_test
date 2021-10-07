module ChatTest
  class Engine < ::Rails::Engine
    isolate_namespace ChatTest
    config.to_prepare do
      Devise::SessionsController.layout "layout_for_sessions_controller"
    end
  end
end

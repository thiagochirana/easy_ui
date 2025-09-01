module EasyUi
  class Engine < ::Rails::Engine
    isolate_namespace EasyUi

    initializer "easy_ui.assets" do |app|
      app.config.assets.paths << root.join("app/assets")
      app.config.assets.paths << root.join("app/javascript")
    end

    initializer "easy_ui.helpers" do
      ActiveSupport.on_load(:action_view) do
        include EasyUiHelper
      end
    end
  end
end

module EasyUi
  class Engine < ::Rails::Engine
    isolate_namespace EasyUi

    initializer "easy_ui.assets" do |app|
      app.config.assets.paths << root.join("app/assets")
      app.config.assets.paths << root.join("app/javascript")
    end
  end
end

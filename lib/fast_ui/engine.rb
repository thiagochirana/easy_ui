module FastUi
  class Engine < ::Rails::Engine
    isolate_namespace FastUi

    initializer "fast_ui.assets" do |app|
      app.config.assets.paths << root.join("app/assets")
      app.config.assets.paths << root.join("app/javascript")
    end
  end
end

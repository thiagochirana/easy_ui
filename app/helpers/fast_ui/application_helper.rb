module FastUi
  module ApplicationHelper
    def fast_button_to(name = nil, options = nil, html_options = nil, &block)
      render FastUi::ButtonComponent.new(name, options, html_options, &block)
    end
  end
end

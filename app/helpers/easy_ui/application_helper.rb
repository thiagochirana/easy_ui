module EasyUi
  module ApplicationHelper
    def easy_button_to(name = nil, options = nil, html_options = nil, &block)
      render EasyUi::ButtonComponent.new(name, options, html_options, &block)
    end
  end
end

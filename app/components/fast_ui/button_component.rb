module FastUi
  class ButtonComponent < ViewComponent::Base
    def initialize(name = nil, options = nil, html_options = nil, &block)
      @name         = name
      @options      = options
      @html_options = html_options || {}

      @variant      = @html_options.delete(:variant) || :primary
    end

    def classes
      base = "px-4 py-2 rounded-xl font-medium transition"
      variants = {
        primary: "bg-blue-500 text-white hover:bg-blue-700",
        secondary: "bg-slate-200 text-slate-700 hover:bg-slate-400",
        danger: "bg-red-500 text-white hover:bg-red-700"
      }
      "#{base} #{variants[@variant.to_sym]}"
    end

    erb_template <<~ERB
      <%= button_to @name, @options, @html_options.merge(class: classes) do %>
        <%= @name %>
      <% end %>
    ERB
  end
end

module EasyUiHelper
  def easy_button_to(name = nil, options = nil, variant: :primary, **html_options, &block)
    classes = "px-4 py-2 rounded #{type_classes(variant)}"
    html_options[:class] = [ html_options[:class], classes ].compact.join(" ")

    if block_given?
      button_to(options || "#", html_options, &block)
    else
      button_to(name, options || "#", html_options)
    end
  end

  def easy_link_to(name = nil, options = nil, variant: :primary, **html_options, &block)
    classes = "px-4 py-2 rounded #{type_classes(variant)}"
    html_options[:class] = [ html_options[:class], classes ].compact.join(" ")

    if block_given?
      link_to(options || "#", html_options, &block)
    else
      link_to(name, options || "#", html_options)
    end
  end

  private

  def type_classes(variant)
    case variant.to_s
    when "primary" then "bg-blue-500 text-white hover:bg-blue-700"
    when "secondary" then "bg-gray-200 text-gray-800 hover:bg-gray-400"
    else "bg-gray-100 text-gray-700"
    end
  end
end

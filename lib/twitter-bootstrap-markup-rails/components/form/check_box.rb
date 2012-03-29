module Twitter::Bootstrap::Markup::Rails::Components
  class Form::CheckBox < Form

    def initialize(object_name, method, element_html, options = {})
      super(options)
      @element_html = element_html
    end

    def to_s
      @element_html =~ /id="([^"]+)"/
      tag_id = $1
      css_class = options[:class].blank? ? "checkbox" : "checkbox #{options[:class]}"
      output_buffer << content_tag(:label, :class => css_class, :for => tag_id) do
        html = ''
        html << element_html
        html << options[:label]
        html.html_safe
      end
      super
    end

  end
end

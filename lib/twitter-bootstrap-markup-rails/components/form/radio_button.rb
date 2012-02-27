module Twitter::Bootstrap::Markup::Rails::Components
  class Form::RadioButton < Form
    def initialize(object_name, method, tag_value, element_html, options = {})
      super(options)
      @element_html = element_html
    end

    def to_s
      output_buffer << content_tag(:label, :class => 'radio ' + options[:class]) do
        html = ''
        html << element_html
        html << options[:label]
        html.html_safe
      end
      super
    end

    private
  end
end

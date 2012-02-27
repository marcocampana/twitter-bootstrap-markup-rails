module Twitter::Bootstrap::Markup::Rails::Components
  class Form::TextArea < Form

    def initialize(object_name, method, element_html, options = {})
      super(options)
      @element_html = element_html
      @label_html = Label.new(object_name, method, options) if options[:label] || options[:label_text]
    end

    def to_s
      output_buffer << content_tag(:div, :class => 'control-group') do
        html = ''
        html << label_html.to_s
        html << content_tag(:div, :class => 'controls') do
          element_html
        end
        html.html_safe
      end
      super
    end

  end
end

module Twitter::Bootstrap::Markup::Rails::Components
  class Form::ControlGroup < Form

    attr_accessor :content

    def initialize(object_name, method, options, content)
      super(options)
      @content = content
      @label_html = Label.new(object_name, method, options)
    end

    def to_s
      output_buffer << content_tag(:div, :class => 'control-group') do
        html = ''
        html << label_html.to_s
        html << content_tag(:div, content, :class => 'controls')
        html.html_safe
      end
      super
    end

  end
end

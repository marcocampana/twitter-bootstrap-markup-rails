module Twitter::Bootstrap::Markup::Rails::Components
  class Form::ControlGroup < Form

    attr_accessor :block

    def initialize(object_name, method, options, block)
      super(options)
      @block = block
      @label_html = Label.new(object_name, method, options) if options[:label] || options[:label_text]
    end

    def to_s
      output_buffer << content_tag(:div, :class => 'control-group') do
        html = ''
        html << label_html.to_s
        html << content_tag(:div, :class => 'controls') do
        end
        html.html_safe
      end
      super
    end

  end
end
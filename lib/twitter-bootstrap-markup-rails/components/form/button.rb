module Twitter::Bootstrap::Markup::Rails::Components
  class Form::Button < Form

    attr_accessor :value

    def initialize(object_name, value, options = {})
      super(options)
      @value = value
    end

    def to_s
      output_buffer << content_tag(:button, {:type => :submit}.merge(options)) do
        html = ''
        html << content_tag(:i, '', :class => options[:icon])
        html << value
        html.html_safe
      end
      super
    end
  end
end

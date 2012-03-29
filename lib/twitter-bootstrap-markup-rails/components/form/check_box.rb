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
        html << tooltip(options[:tooltip]) unless options[:tooltip].blank?
        html.html_safe
      end
      super
    end

    def tooltip(text)
      question_sign_tag = content_tag :i, nil, :class => 'icon-question-sign'
      content_tag :a, question_sign_tag, :class => 'help', :rel => 'tooltip', :href => '#', :title => text
    end
  end
end

module Twitter::Bootstrap::Markup::Rails::Components
  class Form < Base
    autoload :InputField,   'twitter-bootstrap-markup-rails/components/form/input_field'
    autoload :TextArea,     'twitter-bootstrap-markup-rails/components/form/text_area'
    autoload :Label,        'twitter-bootstrap-markup-rails/components/form/label'
    autoload :RadioButton,  'twitter-bootstrap-markup-rails/components/form/radio_button'
    autoload :Select,       'twitter-bootstrap-markup-rails/components/form/select'
    autoload :CheckBox,     'twitter-bootstrap-markup-rails/components/form/check_box'
    autoload :Button,       'twitter-bootstrap-markup-rails/components/form/button'
    autoload :ControlGroup, 'twitter-bootstrap-markup-rails/components/form/control_group'

    include ActionView::Helpers::FormHelper

    attr_accessor :element_html, :label_html

    protected

    def default_options
      {}
    end

    def build_input_wrapper
      if options[:add_on]
        build_add_on_wrapper
      else
        element_html
      end
    end

    def build_add_on_wrapper
      content_tag(:div, :class => "input-#{options[:add_on][:position] || 'prepend'}") do
        add_on = ''
        add_on << element_html
        add_on << content_tag(:span, :class => 'add-on') do
          add_on_content = ''
          add_on_content << content_tag(:i, '', :class => options[:add_on][:icon]) if options[:add_on][:icon]
          add_on_content << options[:add_on][:text] if options[:add_on][:text]
          add_on_content.html_safe
        end
        add_on.html_safe
      end
    end

  end
end

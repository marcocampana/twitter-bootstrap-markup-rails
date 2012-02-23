module Twitter::Bootstrap::Markup::Rails::Components
  class FormBuilder < ActionView::Helpers::FormBuilder

    def text_field(method, options={})
      input_html = super(method, options)
      Form::InputField.new(object_name, method, input_html, options).to_s
    end

    def password_field(method, options={})
      input_html = super(method, options)
      Form::InputField.new(object_name, method, input_html, options).to_s
    end

    def radio_button(method, tag_value, options={})
      element_html = super(method, tag_value, options)
      Form::RadioButton.new(object_name, method, tag_value, element_html, options).to_s
    end

    def button(value, options={})
      Form::Button.new(object_name, value, options).to_s
    end
  end
end

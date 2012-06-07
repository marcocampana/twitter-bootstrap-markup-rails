module Twitter::Bootstrap::Markup::Rails::Components
  class FormBuilder < ActionView::Helpers::FormBuilder

    def text_field(method, options={})
      input_html = super(method, options)
      Form::InputField.new(object_name, method, input_html, options).to_s
    end

    def text_area(method, options={})
      input_html = super(method, options.except(:label_text))
      Form::TextArea.new(object_name, method, input_html, options).to_s
    end

    def password_field(method, options={})
      input_html = super(method, options)
      Form::InputField.new(object_name, method, input_html, options).to_s
    end

    def radio_button(method, tag_value, options={})
      element_html = super(method, tag_value, options)
      Form::RadioButton.new(object_name, method, tag_value, element_html, options).to_s
    end

    def select(method, choices, options={})
      element_html = super(method, choices, options)
      Form::Select.new(object_name, method, element_html, options).to_s
    end

    def check_box(method, options={})
      element_html = super(method, options)
      Form::CheckBox.new(object_name, method, element_html, options).to_s
    end

    def file_field(method, options={})
      element_html = super(method, options)
      Form::FileField.new(object_name, method, element_html, options).to_s
    end

    def button(value, options={})
      Form::Button.new(object_name, value, options).to_s
    end
  end
end

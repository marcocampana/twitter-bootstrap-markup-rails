module Twitter::Bootstrap::Markup::Rails::Helpers
  module FormHelpers
    # Form builder
    # TODO add documentation
    def bootstrap_form_for(*args, &block)
      options = args.extract_options!
      options.reverse_merge!(:builder => Twitter::Bootstrap::Markup::Rails::Components::FormBuilder)
      form_for(*(args + [options]), &block)
    end

    def control_group(object_name, method, options={},  &block)
      content = with_output_buffer(&block)
      Twitter::Bootstrap::Markup::Rails::Components::Form::ControlGroup.new(object_name, method, options, content).to_s
    end
  end
end

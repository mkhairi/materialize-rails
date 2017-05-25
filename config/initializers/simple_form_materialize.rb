# frozen_string_literal: true
# Use this setup block to configure all options available in SimpleForm.
SimpleForm.setup do |config|
  config.error_notification_class = "alert alert-danger"
  config.button_class = "btn waves-effect"
  config.boolean_label_class = nil
  config.boolean_style = :inline

  # Form Initialization
  config.wrappers :materialize_form,
                  tag: "div", class: "input-field col s12" do |b|
    # Form Extensions
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    b.optional :icon

    # Form Components
    b.use :input, class: "validate", error_class: "invalid"
    b.use :label
    b.use :hint, wrap_with: { tag: "span", class: "help-text" }
  end

  # String Input
  config.wrappers :materialize_string,
                  tag: "div", class: "input-field col s12" do |b|
    # Form Extensions
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    b.optional :icon

    # Form Components
    b.use :input, class: "validate", error_class: "invalid"
    b.use :label
    b.use :hint, wrap_with: { tag: "span", class: "help-text" }
  end

  # Email Input
  config.wrappers :materialize_email,
                  tag: "div", class: "input-field col s12", icon: "email" do |b|
    # Form Extensions
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    b.use :icon

    # Form Components
    b.use :input, class: "validate", error_class: "invalid"
    b.use :label
    b.use :hint, wrap_with: { tag: "span", class: "help-text" }
  end

  # URL Input
  config.wrappers :materialize_url,
                  tag: "div", class: "input-field col s12", icon: "link" do |b|
    # Form Extensions
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    b.use :icon

    # Form Components
    b.use :input, class: "validate", error_class: "invalid"
    b.use :label
    b.use :hint, wrap_with: { tag: "span", class: "help-text" }
  end

  # Telephone Input
  config.wrappers :materialize_tel,
                  tag: "div", class: "input-field col s12", icon: "phone" do |b|
    # Form Extensions
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    b.use :icon

    # Form Components
    b.use :input, class: "validate", error_class: "invalid"
    b.use :label
    b.use :hint, wrap_with: { tag: "span", class: "help-text" }
  end

  # Date Picker Input
  config.wrappers :materialize_date,
                  tag: "div", class: "input-field col s12", icon: "event" do |b|
    # Form Extensions
    b.use :html5
    b.use :placeholder
    b.optional :readonly
    b.use :icon

    # Form Components
    b.use :input, class: "datepicker validate", error_class: "invalid"
    b.use :label
    b.use :hint, wrap_with: { tag: "span", class: "help-text" }
  end

  # Textarea Input Field
  config.wrappers :materialize_text_area,
                  tag: "div", class: "input-field col s12" do |b|
    # Form Extensions
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    b.optional :icon

    # Form Components
    b.use :input, class: "materialize-textarea validate", error_class: "invalid"
    b.use :label
    b.use :hint, wrap_with: { tag: "span", class: "help-text" }
  end

  # Boolean Type
  config.wrappers :materialize_boolean, tag: "p", class: "col s12" do |b|
    # Form Extensions
    b.use :html5
    b.optional :readonly

    # Form Components
    b.use :input
    b.use :label
    b.use :hint, wrap_with: { tag: "span", class: "help-text" }
  end

  # Toggle Input Type
  config.wrappers :materialize_switch,
                  tag: "p", class: "col s12 switch" do |b|
    # Form Extensions
    b.use :html5
    b.optional :readonly

    # Form Components
    b.use :label
    b.wrapper tag: "label" do |ba|
      ba.use :input
      ba.use :tag, tag: "span", class: "lever"
    end
    b.use :hint, wrap_with: { tag: "span", class: "help-text" }
  end

  # Range Input Type
  config.wrappers :materialize_range,
                  tag: "p", class: "range-field" do |b|
    # Form Extensions
    b.use :html5
    b.optional :readonly
    b.optional :min_max

    # Form Components
    b.use :label
    b.use :input
    b.use :hint, wrap_with: { tag: "span", class: "help-text" }
  end

  # Radio & Checkbox Input Collections
  config.wrappers :materialize_radio_and_checkboxes,
                  tag: "div", class: "col s12" do |b|
    # Form Extensions
    b.use :html5
    b.optional :readonly

    # Form Components
    b.use :label
    b.use :input
    b.use :hint, wrap_with: { tag: "span", class: "help-text" }
  end

  # File Upload
  config.wrappers :materialize_file_input,
                  tag: "div", class: "file-field input-field col s12" do |b|
    # Form Extensions
    b.use :html5

    # Form Components
    b.wrapper tag: :div, class: "btn" do |ba|
      ba.use :tag, tag: :span, text: :label_text
      ba.use :input
    end
    b.wrapper tag: :div, class: "file-path-wrapper" do |ba|
      ba.use :tag, tag: :input, class: "file-path validate", type: "text",
                   placeholder: "Browse...", error_class: "invalid"
    end
    b.use :hint, wrap_with: { tag: "span", class: "help-text" }
  end

  # Multiple File Upload
  config.wrappers :materialize_multiple_file_input,
                  tag: "div", class: "file-field input-field col s12" do |b|
    # Form Extensions
    b.use :html5

    # Form Components
    b.wrapper tag: :div, class: "btn" do |ba|
      ba.use :tag, tag: :span, text: :label_text
      ba.use :input, multiple: true
    end
    b.wrapper tag: :div, class: "file-path-wrapper" do |ba|
      ba.use :tag, tag: :input, class: "file-path validate", type: "text",
                   placeholder: "Upload one or more files",
                   error_class: "invalid"
    end
    b.use :hint, wrap_with: { tag: "span", class: "help-text" }
  end

  config.default_wrapper = :materialize_form
  config.wrapper_mappings = {
    boolean:       :materialize_boolean,
    string:        :materialize_string,
    email:         :materialize_email,
    url:           :materialize_url,
    tel:           :materialize_tel,
    password:      :materialize_string,
    search:        :materialize_string,
    uuid:          :materialize_string,
    text:          :materialize_text_area,
    file:          :materialize_file_input,
    integer:       :materialize_string,
    float:         :materialize_string,
    decimal:       :materialize_string,
    range:         :materialize_range,
    date:          :materialize_date,
    check_boxes:   :materialize_radio_and_checkboxes,
    radio_buttons: :materialize_radio_and_checkboxes
  }
end

# frozen_string_literal: true

require "test_helper"

class ButtonComponentTest < ViewComponent::TestCase
  def test_renders_button_with_default_values
    render_inline(ButtonComponent.new)
    
    assert_selector "button", text: "Save theme"
    assert_selector "button[disabled]", count: 0
    assert_selector "button.bg-black" # default theme
  end

  def test_renders_button_with_custom_values
    render_inline(ButtonComponent.new(
      size: :sm,
      label: "Custom Label",
      disabled: true,
      theme: :primary
    ))
    
    assert_selector "button", text: "Custom Label"
    assert_selector "button[disabled]"
    assert_selector "button.bg-blue-600" # primary theme
  end

  def test_renders_button_with_icon
    render_inline(ButtonComponent.new(
      icon: "check"
    ))
    
    assert_selector "svg" # icon should be present
  end
end

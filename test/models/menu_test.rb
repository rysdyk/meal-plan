require 'test_helper'

class MenuTest < ActiveSupport::TestCase
  def test_create_valid_menu
    menu = menus(:one)
    assert menu.valid?, menu.errors.messages
    assert menu.save, "menu should have saved"
  end
end

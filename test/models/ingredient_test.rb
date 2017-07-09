require 'test_helper'

class IngredientTest < ActiveSupport::TestCase
  test "create a basic ingredient" do
    ingredient = Ingredient.new
    assert_not ingredient.valid?, "ingredient should not be valid yet."
    ingredient = ingredients(:one)
    assert ingredient.valid?, ingredient.errors.messages
    assert ingredient.save, "basic ingredient should have saved."
  end
  
  def test_should_add_valid_category_and_warning
    ingredient = ingredients(:one)
    ingredient.category = Ingredient::CATEGORY.sample
    ingredient.warning = Ingredient::WARNING.sample
    assert ingredient.valid?, ingredient.errors.messages
  end
end

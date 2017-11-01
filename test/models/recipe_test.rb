require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  
  test "save valid recipe" do
    recipe = build(:recipe)
    assert recipe.valid?, recipe.errors.messages
    assert recipe.save, "recipe should have saved"
  end
  
end

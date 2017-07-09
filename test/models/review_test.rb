require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  test "should save a valid review" do
    review = Review.new()
    assert_not review.valid?, "Empty review should not be considered valid"
    review.rating = 5
    assert_not review.valid?, "Review was considered valid with the content"
    review.review = "this was extremely decent"
    review.user = users(:one)
    review.reviewable = recipes(:one)
    assert review.valid?, "Review should be valid"
    assert review.save, "Was not able to save a valid review"
  end
  
  test "should be a recipe review" do
    review = reviews(:one)
    assert_equal review.reviewable.name, "Recipe1"
  end
  
  
  test "should ba a plan review" do
    review = reviews(:two)
    assert_equal review.reviewable.name, "Plan1"
  end
end

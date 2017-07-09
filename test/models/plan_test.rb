require 'test_helper'

class PlanTest < ActiveSupport::TestCase
  
  def test_save_a_valid_plan
    plan = plans(:one)
    assert plan.valid?, plan.errors.messages
    assert plan.save, "plan should have saved"
  end
  
  def test_plan_should_have_review
    
  end
  
end
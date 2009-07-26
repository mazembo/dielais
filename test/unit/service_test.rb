require File.dirname(__FILE__) + '/../test_helper'

class ServiceTest < ActiveSupport::TestCase
  # Replace this with your real tests.
   def setup 
   	@service = Service.find(1)
   	end 
  
   def test_truth
    assert true
  end
end

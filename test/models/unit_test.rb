require 'test_helper'

class UnitTest < ActiveSupport::TestCase
  
  def setup
    @john = User.new(email: "john@mail.com")
    @rc26 = Unit.create(unit_name: "RC-26", members: 12, owner: @john.email, private: true, user_id: @john.id)
  end
    
  def user_can_create_a_unit
    rc26 = Unit.create(unit_name: "RC-26", members: 0, user_id: @john.id)
    
    assert true, rc26.user_id = @john.id
    
  end
end

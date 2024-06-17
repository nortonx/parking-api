class GroupTest < ActiveSupport::TestCase
  test "should not save group without name" do
    group = Group.new
    assert_not group.save
  end
end

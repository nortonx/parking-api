class GroupTest < ActiveSupport::TestCase
  test "should not save group without name" do
    group = Group.new
    assert_not group.save
  end

  test "should save group with name" do
    group = Group.new
    group.name = "Teste"
    assert group.save
  end
end

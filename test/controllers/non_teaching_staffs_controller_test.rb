require 'test_helper'

class NonTeachingStaffsControllerTest < ActionController::TestCase
  setup do
    @non_teaching_staff = non_teaching_staffs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:non_teaching_staffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create non_teaching_staff" do
    assert_difference('NonTeachingStaff.count') do
      post :create, non_teaching_staff: { designation: @non_teaching_staff.designation, image_path: @non_teaching_staff.image_path, is_technical: @non_teaching_staff.is_technical, joined_in: @non_teaching_staff.joined_in, name: @non_teaching_staff.name, qualification: @non_teaching_staff.qualification }
    end

    assert_redirected_to non_teaching_staff_path(assigns(:non_teaching_staff))
  end

  test "should show non_teaching_staff" do
    get :show, id: @non_teaching_staff
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @non_teaching_staff
    assert_response :success
  end

  test "should update non_teaching_staff" do
    patch :update, id: @non_teaching_staff, non_teaching_staff: { designation: @non_teaching_staff.designation, image_path: @non_teaching_staff.image_path, is_technical: @non_teaching_staff.is_technical, joined_in: @non_teaching_staff.joined_in, name: @non_teaching_staff.name, qualification: @non_teaching_staff.qualification }
    assert_redirected_to non_teaching_staff_path(assigns(:non_teaching_staff))
  end

  test "should destroy non_teaching_staff" do
    assert_difference('NonTeachingStaff.count', -1) do
      delete :destroy, id: @non_teaching_staff
    end

    assert_redirected_to non_teaching_staffs_path
  end
end

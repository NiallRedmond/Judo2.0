require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:students)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post :create, student: { belt: @student.belt, dob: @student.dob, email: @student.email, gender: @student.gender, judo_class_id: @student.judo_class_id, password_digest: @student.password_digest, photo: @student.photo, score: @student.score, student_name: @student.student_name }
    end

    assert_redirected_to student_path(assigns(:student))
  end

  test "should show student" do
    get :show, id: @student
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student
    assert_response :success
  end

  test "should update student" do
    patch :update, id: @student, student: { belt: @student.belt, dob: @student.dob, email: @student.email, gender: @student.gender, judo_class_id: @student.judo_class_id, password_digest: @student.password_digest, photo: @student.photo, score: @student.score, student_name: @student.student_name }
    assert_redirected_to student_path(assigns(:student))
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete :destroy, id: @student
    end

    assert_redirected_to students_path
  end
end

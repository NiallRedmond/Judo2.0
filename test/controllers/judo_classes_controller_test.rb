require 'test_helper'

class JudoClassesControllerTest < ActionController::TestCase
  setup do
    @judo_class = judo_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:judo_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create judo_class" do
    assert_difference('JudoClass.count') do
      post :create, judo_class: { belt_level: @judo_class.belt_level, class_name: @judo_class.class_name, day: @judo_class.day, teacher_name: @judo_class.teacher_name, time: @judo_class.time }
    end

    assert_redirected_to judo_class_path(assigns(:judo_class))
  end

  test "should show judo_class" do
    get :show, id: @judo_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @judo_class
    assert_response :success
  end

  test "should update judo_class" do
    patch :update, id: @judo_class, judo_class: { belt_level: @judo_class.belt_level, class_name: @judo_class.class_name, day: @judo_class.day, teacher_name: @judo_class.teacher_name, time: @judo_class.time }
    assert_redirected_to judo_class_path(assigns(:judo_class))
  end

  test "should destroy judo_class" do
    assert_difference('JudoClass.count', -1) do
      delete :destroy, id: @judo_class
    end

    assert_redirected_to judo_classes_path
  end
end

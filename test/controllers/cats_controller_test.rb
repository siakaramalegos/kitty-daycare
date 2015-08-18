require 'test_helper'

class CatsControllerTest < ActionController::TestCase
  setup do
    @cat = cats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cat" do
    assert_difference('Cat.count') do
      post :create, cat: { allergies: @cat.allergies, breed_id: @cat.breed_id, dob: @cat.dob, in_daycare: @cat.in_daycare, name: @cat.name, owner_id: @cat.owner_id, vet_name: @cat.vet_name, vet_phone: @cat.vet_phone }
    end

    assert_redirected_to cat_path(assigns(:cat))
  end

  test "should show cat" do
    get :show, id: @cat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cat
    assert_response :success
  end

  test "should update cat" do
    patch :update, id: @cat, cat: { allergies: @cat.allergies, breed_id: @cat.breed_id, dob: @cat.dob, in_daycare: @cat.in_daycare, name: @cat.name, owner_id: @cat.owner_id, vet_name: @cat.vet_name, vet_phone: @cat.vet_phone }
    assert_redirected_to cat_path(assigns(:cat))
  end

  test "should destroy cat" do
    assert_difference('Cat.count', -1) do
      delete :destroy, id: @cat
    end

    assert_redirected_to cats_path
  end
end

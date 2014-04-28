require 'test_helper'

class PairingsControllerTest < ActionController::TestCase
  setup do
    @pairing = pairings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pairings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pairing" do
    assert_difference('Pairing.count') do
      post :create, pairing: { from: @pairing.from, repo: @pairing.repo, student: @pairing.student, teacher: @pairing.teacher, till: @pairing.till }
    end

    assert_redirected_to pairing_path(assigns(:pairing))
  end

  test "should show pairing" do
    get :show, id: @pairing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pairing
    assert_response :success
  end

  test "should update pairing" do
    patch :update, id: @pairing, pairing: { from: @pairing.from, repo: @pairing.repo, student: @pairing.student, teacher: @pairing.teacher, till: @pairing.till }
    assert_redirected_to pairing_path(assigns(:pairing))
  end

  test "should destroy pairing" do
    assert_difference('Pairing.count', -1) do
      delete :destroy, id: @pairing
    end

    assert_redirected_to pairings_path
  end
end

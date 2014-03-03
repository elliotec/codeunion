require "test_helper"

class WaysControllerTest < ActionController::TestCase

  before do
    @way = ways(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:ways)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Way.count') do
      post :create, way: {  }
    end

    assert_redirected_to way_path(assigns(:way))
  end

  def test_show
    get :show, id: @way
    assert_response :success
  end

  def test_edit
    get :edit, id: @way
    assert_response :success
  end

  def test_update
    put :update, id: @way, way: {  }
    assert_redirected_to way_path(assigns(:way))
  end

  def test_destroy
    assert_difference('Way.count', -1) do
      delete :destroy, id: @way
    end

    assert_redirected_to ways_path
  end
end

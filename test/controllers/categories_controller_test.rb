require "test_helper"

class CategoriesControllerTest < ActionController::TestCase

  before do
    @category = categories(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:categories)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Category.count') do
      post :create, category: {  }
    end

    assert_redirected_to category_path(assigns(:category))
  end

  def test_show
    get :show, id: @category
    assert_response :success
  end

  def test_edit
    get :edit, id: @category
    assert_response :success
  end

  def test_update
    put :update, id: @category, category: {  }
    assert_redirected_to category_path(assigns(:category))
  end

  def test_destroy
    assert_difference('Category.count', -1) do
      delete :destroy, id: @category
    end

    assert_redirected_to categories_path
  end
end

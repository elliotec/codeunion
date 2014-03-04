require "test_helper"

class LanguagesControllerTest < ActionController::TestCase

  before do
    @language = languages(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:languages)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Language.count') do
      post :create, language: {  }
    end

    assert_redirected_to language_path(assigns(:language))
  end

  def test_show
    get :show, id: @language
    assert_response :success
  end

  def test_edit
    get :edit, id: @language
    assert_response :success
  end

  def test_update
    put :update, id: @language, language: {  }
    assert_redirected_to language_path(assigns(:language))
  end

  def test_destroy
    assert_difference('Language.count', -1) do
      delete :destroy, id: @language
    end

    assert_redirected_to languages_path
  end
end

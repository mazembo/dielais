require File.dirname(__FILE__) + '/../test_helper'

class ServicesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:services)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_services
    assert_difference('Services.count') do
      post :create, :services => { }
    end

    assert_redirected_to services_path(assigns(:services))
  end

  def test_should_show_services
    get :show, :id => services(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => services(:one).id
    assert_response :success
  end

  def test_should_update_services
    put :update, :id => services(:one).id, :services => { }
    assert_redirected_to services_path(assigns(:services))
  end

  def test_should_destroy_services
    assert_difference('Services.count', -1) do
      delete :destroy, :id => services(:one).id
    end

    assert_redirected_to services_path
  end
end

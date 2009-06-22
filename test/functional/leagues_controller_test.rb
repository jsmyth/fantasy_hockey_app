require 'test_helper'

class LeaguesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => League.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    League.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    League.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to league_url(assigns(:league))
  end
  
  def test_edit
    get :edit, :id => League.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    League.any_instance.stubs(:valid?).returns(false)
    put :update, :id => League.first
    assert_template 'edit'
  end
  
  def test_update_valid
    League.any_instance.stubs(:valid?).returns(true)
    put :update, :id => League.first
    assert_redirected_to league_url(assigns(:league))
  end
  
  def test_destroy
    league = League.first
    delete :destroy, :id => league
    assert_redirected_to leagues_url
    assert !League.exists?(league.id)
  end
end

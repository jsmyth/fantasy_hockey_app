require 'test_helper'

class FantasySeasonsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => FantasySeason.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    FantasySeason.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    FantasySeason.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to fantasy_season_url(assigns(:fantasy_season))
  end
  
  def test_edit
    get :edit, :id => FantasySeason.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    FantasySeason.any_instance.stubs(:valid?).returns(false)
    put :update, :id => FantasySeason.first
    assert_template 'edit'
  end
  
  def test_update_valid
    FantasySeason.any_instance.stubs(:valid?).returns(true)
    put :update, :id => FantasySeason.first
    assert_redirected_to fantasy_season_url(assigns(:fantasy_season))
  end
  
  def test_destroy
    fantasy_season = FantasySeason.first
    delete :destroy, :id => fantasy_season
    assert_redirected_to fantasy_seasons_url
    assert !FantasySeason.exists?(fantasy_season.id)
  end
end

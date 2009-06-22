require 'test_helper'

class StatsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Stat.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Stat.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Stat.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to stat_url(assigns(:stat))
  end
  
  def test_edit
    get :edit, :id => Stat.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Stat.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Stat.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Stat.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Stat.first
    assert_redirected_to stat_url(assigns(:stat))
  end
  
  def test_destroy
    stat = Stat.first
    delete :destroy, :id => stat
    assert_redirected_to stats_url
    assert !Stat.exists?(stat.id)
  end
end

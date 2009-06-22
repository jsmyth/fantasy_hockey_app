require 'test_helper'

class PlayersControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Player.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Player.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Player.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to player_url(assigns(:player))
  end
  
  def test_edit
    get :edit, :id => Player.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Player.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Player.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Player.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Player.first
    assert_redirected_to player_url(assigns(:player))
  end
  
  def test_destroy
    player = Player.first
    delete :destroy, :id => player
    assert_redirected_to players_url
    assert !Player.exists?(player.id)
  end
end

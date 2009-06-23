require 'test_helper'

class FantasyTeamsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => FantasyTeam.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    FantasyTeam.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    FantasyTeam.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to fantasy_team_url(assigns(:fantasy_team))
  end
  
  def test_edit
    get :edit, :id => FantasyTeam.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    FantasyTeam.any_instance.stubs(:valid?).returns(false)
    put :update, :id => FantasyTeam.first
    assert_template 'edit'
  end
  
  def test_update_valid
    FantasyTeam.any_instance.stubs(:valid?).returns(true)
    put :update, :id => FantasyTeam.first
    assert_redirected_to fantasy_team_url(assigns(:fantasy_team))
  end
  
  def test_destroy
    fantasy_team = FantasyTeam.first
    delete :destroy, :id => fantasy_team
    assert_redirected_to fantasy_teams_url
    assert !FantasyTeam.exists?(fantasy_team.id)
  end
end

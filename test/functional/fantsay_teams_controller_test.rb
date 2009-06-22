require 'test_helper'

class FantsayTeamsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => FantsayTeam.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    FantsayTeam.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    FantsayTeam.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to fantsay_team_url(assigns(:fantsay_team))
  end
  
  def test_edit
    get :edit, :id => FantsayTeam.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    FantsayTeam.any_instance.stubs(:valid?).returns(false)
    put :update, :id => FantsayTeam.first
    assert_template 'edit'
  end
  
  def test_update_valid
    FantsayTeam.any_instance.stubs(:valid?).returns(true)
    put :update, :id => FantsayTeam.first
    assert_redirected_to fantsay_team_url(assigns(:fantsay_team))
  end
  
  def test_destroy
    fantsay_team = FantsayTeam.first
    delete :destroy, :id => fantsay_team
    assert_redirected_to fantsay_teams_url
    assert !FantsayTeam.exists?(fantsay_team.id)
  end
end

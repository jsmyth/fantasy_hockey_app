require 'test_helper'

class RosterAssigmentsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => RosterAssigment.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    RosterAssigment.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    RosterAssigment.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to roster_assigment_url(assigns(:roster_assigment))
  end
  
  def test_edit
    get :edit, :id => RosterAssigment.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    RosterAssigment.any_instance.stubs(:valid?).returns(false)
    put :update, :id => RosterAssigment.first
    assert_template 'edit'
  end
  
  def test_update_valid
    RosterAssigment.any_instance.stubs(:valid?).returns(true)
    put :update, :id => RosterAssigment.first
    assert_redirected_to roster_assigment_url(assigns(:roster_assigment))
  end
  
  def test_destroy
    roster_assigment = RosterAssigment.first
    delete :destroy, :id => roster_assigment
    assert_redirected_to roster_assigments_url
    assert !RosterAssigment.exists?(roster_assigment.id)
  end
end

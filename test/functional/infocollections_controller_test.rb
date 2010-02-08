require 'test_helper'

class InfocollectionsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Infocollection.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Infocollection.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Infocollection.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to infocollection_url(assigns(:infocollection))
  end
  
  def test_edit
    get :edit, :id => Infocollection.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Infocollection.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Infocollection.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Infocollection.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Infocollection.first
    assert_redirected_to infocollection_url(assigns(:infocollection))
  end
  
  def test_destroy
    infocollection = Infocollection.first
    delete :destroy, :id => infocollection
    assert_redirected_to infocollections_url
    assert !Infocollection.exists?(infocollection.id)
  end
end

require 'test_helper'

class InfobitsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Infobit.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Infobit.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Infobit.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to infobit_url(assigns(:infobit))
  end
  
  def test_edit
    get :edit, :id => Infobit.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Infobit.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Infobit.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Infobit.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Infobit.first
    assert_redirected_to infobit_url(assigns(:infobit))
  end
  
  def test_destroy
    infobit = Infobit.first
    delete :destroy, :id => infobit
    assert_redirected_to infobits_url
    assert !Infobit.exists?(infobit.id)
  end
end

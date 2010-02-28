require 'test_helper'

class DataCenterAddressesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => DataCenterAddress.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    DataCenterAddress.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    DataCenterAddress.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to data_center_address_url(assigns(:data_center_address))
  end
  
  def test_edit
    get :edit, :id => DataCenterAddress.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    DataCenterAddress.any_instance.stubs(:valid?).returns(false)
    put :update, :id => DataCenterAddress.first
    assert_template 'edit'
  end
  
  def test_update_valid
    DataCenterAddress.any_instance.stubs(:valid?).returns(true)
    put :update, :id => DataCenterAddress.first
    assert_redirected_to data_center_address_url(assigns(:data_center_address))
  end
  
  def test_destroy
    data_center_address = DataCenterAddress.first
    delete :destroy, :id => data_center_address
    assert_redirected_to data_center_addresses_url
    assert !DataCenterAddress.exists?(data_center_address.id)
  end
end

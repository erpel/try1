require 'test_helper'

class EMailTextsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => EMailText.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    EMailText.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    EMailText.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to e_mail_text_url(assigns(:e_mail_text))
  end
  
  def test_edit
    get :edit, :id => EMailText.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    EMailText.any_instance.stubs(:valid?).returns(false)
    put :update, :id => EMailText.first
    assert_template 'edit'
  end
  
  def test_update_valid
    EMailText.any_instance.stubs(:valid?).returns(true)
    put :update, :id => EMailText.first
    assert_redirected_to e_mail_text_url(assigns(:e_mail_text))
  end
  
  def test_destroy
    e_mail_text = EMailText.first
    delete :destroy, :id => e_mail_text
    assert_redirected_to e_mail_texts_url
    assert !EMailText.exists?(e_mail_text.id)
  end
end

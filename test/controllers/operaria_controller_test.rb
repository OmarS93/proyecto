require 'test_helper'

class OperariaControllerTest < ActionController::TestCase
  setup do
    @operarium = operaria(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:operaria)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create operarium" do
    assert_difference('Operarium.count') do
      post :create, operarium: { date_end: @operarium.date_end, date_home: @operarium.date_home, direccion: @operarium.direccion, document_id: @operarium.document_id, experence: @operarium.experence, gender: @operarium.gender, last_name: @operarium.last_name, name: @operarium.name, number_document: @operarium.number_document, online: @operarium.online, record_id: @operarium.record_id, telephone: @operarium.telephone, type_formation: @operarium.type_formation }
    end

    assert_redirected_to operarium_path(assigns(:operarium))
  end

  test "should show operarium" do
    get :show, id: @operarium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @operarium
    assert_response :success
  end

  test "should update operarium" do
    patch :update, id: @operarium, operarium: { date_end: @operarium.date_end, date_home: @operarium.date_home, direccion: @operarium.direccion, document_id: @operarium.document_id, experence: @operarium.experence, gender: @operarium.gender, last_name: @operarium.last_name, name: @operarium.name, number_document: @operarium.number_document, online: @operarium.online, record_id: @operarium.record_id, telephone: @operarium.telephone, type_formation: @operarium.type_formation }
    assert_redirected_to operarium_path(assigns(:operarium))
  end

  test "should destroy operarium" do
    assert_difference('Operarium.count', -1) do
      delete :destroy, id: @operarium
    end

    assert_redirected_to operaria_path
  end
end

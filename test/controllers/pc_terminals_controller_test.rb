require 'test_helper'

class PcTerminalsControllerTest < ActionController::TestCase
  setup do
    @pc_terminal = pc_terminals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pc_terminals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pc_terminal" do
    assert_difference('PcTerminal.count') do
      post :create, pc_terminal: { manage_id: @pc_terminal.manage_id, name: @pc_terminal.name, remark: @pc_terminal.remark, rental_status_id: @pc_terminal.rental_status_id }
    end

    assert_redirected_to pc_terminal_path(assigns(:pc_terminal))
  end

  test "should show pc_terminal" do
    get :show, id: @pc_terminal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pc_terminal
    assert_response :success
  end

  test "should update pc_terminal" do
    patch :update, id: @pc_terminal, pc_terminal: { manage_id: @pc_terminal.manage_id, name: @pc_terminal.name, remark: @pc_terminal.remark, rental_status_id: @pc_terminal.rental_status_id }
    assert_redirected_to pc_terminal_path(assigns(:pc_terminal))
  end

  test "should destroy pc_terminal" do
    assert_difference('PcTerminal.count', -1) do
      delete :destroy, id: @pc_terminal
    end

    assert_redirected_to pc_terminals_path
  end
end

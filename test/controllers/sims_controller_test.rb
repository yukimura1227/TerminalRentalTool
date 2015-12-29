require 'test_helper'

class SimsControllerTest < ActionController::TestCase
  setup do
    @sim = sims(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sims)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sim" do
    assert_difference('Sim.count') do
      post :create, sim: { phone_number: @sim.phone_number, remark: @sim.remark, rental_status_id: @sim.rental_status_id }
    end

    assert_redirected_to sim_path(assigns(:sim))
  end

  test "should show sim" do
    get :show, id: @sim
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sim
    assert_response :success
  end

  test "should update sim" do
    patch :update, id: @sim, sim: { phone_number: @sim.phone_number, remark: @sim.remark, rental_status_id: @sim.rental_status_id }
    assert_redirected_to sim_path(assigns(:sim))
  end

  test "should destroy sim" do
    assert_difference('Sim.count', -1) do
      delete :destroy, id: @sim
    end

    assert_redirected_to sims_path
  end
end

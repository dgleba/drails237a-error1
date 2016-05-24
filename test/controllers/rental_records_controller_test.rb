require 'test_helper'

class RentalRecordsControllerTest < ActionController::TestCase
  setup do
    @rental_record = rental_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rental_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rental_record" do
    assert_difference('RentalRecord.count') do
      post :create, rental_record: { customer_id: @rental_record.customer_id, end_date: @rental_record.end_date, lastUpdated: @rental_record.lastUpdated, output: @rental_record.output, start_date: @rental_record.start_date, vehicle_id: @rental_record.vehicle_id }
    end

    assert_redirected_to rental_record_path(assigns(:rental_record))
  end

  test "should show rental_record" do
    get :show, id: @rental_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rental_record
    assert_response :success
  end

  test "should update rental_record" do
    patch :update, id: @rental_record, rental_record: { customer_id: @rental_record.customer_id, end_date: @rental_record.end_date, lastUpdated: @rental_record.lastUpdated, output: @rental_record.output, start_date: @rental_record.start_date, vehicle_id: @rental_record.vehicle_id }
    assert_redirected_to rental_record_path(assigns(:rental_record))
  end

  test "should destroy rental_record" do
    assert_difference('RentalRecord.count', -1) do
      delete :destroy, id: @rental_record
    end

    assert_redirected_to rental_records_path
  end
end

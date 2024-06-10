require "test_helper"

class SampleCusDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sample_cus_datum = sample_cus_data(:one)
  end

  test "should get index" do
    get sample_cus_data_url
    assert_response :success
  end

  test "should get new" do
    get new_sample_cus_datum_url
    assert_response :success
  end

  test "should create sample_cus_datum" do
    assert_difference("SampleCusDatum.count") do
      post sample_cus_data_url, params: { sample_cus_datum: { balance: @sample_cus_datum.balance, customerid: @sample_cus_datum.customerid, date: @sample_cus_datum.date, destination: @sample_cus_datum.destination, first_name: @sample_cus_datum.first_name, last_name: @sample_cus_datum.last_name, phone: @sample_cus_datum.phone } }
    end

    assert_redirected_to sample_cus_datum_url(SampleCusDatum.last)
  end

  test "should show sample_cus_datum" do
    get sample_cus_datum_url(@sample_cus_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_sample_cus_datum_url(@sample_cus_datum)
    assert_response :success
  end

  test "should update sample_cus_datum" do
    patch sample_cus_datum_url(@sample_cus_datum), params: { sample_cus_datum: { balance: @sample_cus_datum.balance, customerid: @sample_cus_datum.customerid, date: @sample_cus_datum.date, destination: @sample_cus_datum.destination, first_name: @sample_cus_datum.first_name, last_name: @sample_cus_datum.last_name, phone: @sample_cus_datum.phone } }
    assert_redirected_to sample_cus_datum_url(@sample_cus_datum)
  end

  test "should destroy sample_cus_datum" do
    assert_difference("SampleCusDatum.count", -1) do
      delete sample_cus_datum_url(@sample_cus_datum)
    end

    assert_redirected_to sample_cus_data_url
  end
end

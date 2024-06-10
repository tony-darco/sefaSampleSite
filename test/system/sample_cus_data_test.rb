require "application_system_test_case"

class SampleCusDataTest < ApplicationSystemTestCase
  setup do
    @sample_cus_datum = sample_cus_data(:one)
  end

  test "visiting the index" do
    visit sample_cus_data_url
    assert_selector "h1", text: "Sample cus data"
  end

  test "should create sample cus datum" do
    visit sample_cus_data_url
    click_on "New sample cus datum"

    fill_in "Balance", with: @sample_cus_datum.balance
    fill_in "Customerid", with: @sample_cus_datum.customerid
    fill_in "Date", with: @sample_cus_datum.date
    fill_in "Destination", with: @sample_cus_datum.destination
    fill_in "First name", with: @sample_cus_datum.first_name
    fill_in "Last name", with: @sample_cus_datum.last_name
    fill_in "Phone", with: @sample_cus_datum.phone
    click_on "Create Sample cus datum"

    assert_text "Sample cus datum was successfully created"
    click_on "Back"
  end

  test "should update Sample cus datum" do
    visit sample_cus_datum_url(@sample_cus_datum)
    click_on "Edit this sample cus datum", match: :first

    fill_in "Balance", with: @sample_cus_datum.balance
    fill_in "Customerid", with: @sample_cus_datum.customerid
    fill_in "Date", with: @sample_cus_datum.date
    fill_in "Destination", with: @sample_cus_datum.destination
    fill_in "First name", with: @sample_cus_datum.first_name
    fill_in "Last name", with: @sample_cus_datum.last_name
    fill_in "Phone", with: @sample_cus_datum.phone
    click_on "Update Sample cus datum"

    assert_text "Sample cus datum was successfully updated"
    click_on "Back"
  end

  test "should destroy Sample cus datum" do
    visit sample_cus_datum_url(@sample_cus_datum)
    click_on "Destroy this sample cus datum", match: :first

    assert_text "Sample cus datum was successfully destroyed"
  end
end

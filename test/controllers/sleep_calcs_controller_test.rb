require 'test_helper'

class SleepCalcsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sleep_calc = sleep_calcs(:one)
  end

  test "should get index" do
    get sleep_calcs_url
    assert_response :success
  end

  test "should get new" do
    get new_sleep_calc_url
    assert_response :success
  end

  test "should create sleep_calc" do
    assert_difference('SleepCalc.count') do
      post sleep_calcs_url, params: { sleep_calc: {  } }
    end

    assert_redirected_to sleep_calc_url(SleepCalc.last)
  end

  test "should show sleep_calc" do
    get sleep_calc_url(@sleep_calc)
    assert_response :success
  end

  test "should get edit" do
    get edit_sleep_calc_url(@sleep_calc)
    assert_response :success
  end

  test "should update sleep_calc" do
    patch sleep_calc_url(@sleep_calc), params: { sleep_calc: {  } }
    assert_redirected_to sleep_calc_url(@sleep_calc)
  end

  test "should destroy sleep_calc" do
    assert_difference('SleepCalc.count', -1) do
      delete sleep_calc_url(@sleep_calc)
    end

    assert_redirected_to sleep_calcs_url
  end
end

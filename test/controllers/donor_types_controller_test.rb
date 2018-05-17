require 'test_helper'

class DonorTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @donor_type = donor_types(:one)
  end

  test 'should get index' do
    get donor_types_url
    assert_response :success
  end

  test 'should get new' do
    get new_donor_type_url
    assert_response :success
  end

  test 'should create donor_type' do
    assert_difference('DonorType.count') do
      post donor_types_url, params: { donor_type: { name: @donor_type.name } }
    end

    assert_redirected_to donor_type_url(DonorType.last)
  end

  test 'should show donor_type' do
    get donor_type_url(@donor_type)
    assert_response :success
  end

  test 'should get edit' do
    get edit_donor_type_url(@donor_type)
    assert_response :success
  end

  test 'should update donor_type' do
    patch donor_type_url(@donor_type), params: { donor_type: { name: @donor_type.name } }
    assert_redirected_to donor_type_url(@donor_type)
  end

  test 'should destroy donor_type' do
    assert_difference('DonorType.count', -1) do
      delete donor_type_url(@donor_type)
    end

    assert_redirected_to donor_types_url
  end
end

require 'test_helper'

class AnimalHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animal_history = animal_histories(:one)
  end

  test 'should get index' do
    get animal_histories_url
    assert_response :success
  end

  test 'should get new' do
    get new_animal_history_url
    assert_response :success
  end

  test 'should create animal_history' do
    assert_difference('AnimalHistory.count') do
      post animal_histories_url, params: { animal_history: { animal_id: @animal_history.animal_id, dateIni: @animal_history.dateIni, note: @animal_history.note, vet_id: @animal_history.vet_id } }
    end

    assert_redirected_to animal_history_url(AnimalHistory.last)
  end

  test 'should show animal_history' do
    get animal_history_url(@animal_history)
    assert_response :success
  end

  test 'should get edit' do
    get edit_animal_history_url(@animal_history)
    assert_response :success
  end

  test 'should update animal_history' do
    patch animal_history_url(@animal_history), params: { animal_history: { animal_id: @animal_history.animal_id, dateIni: @animal_history.dateIni, note: @animal_history.note, vet_id: @animal_history.vet_id } }
    assert_redirected_to animal_history_url(@animal_history)
  end

  test 'should destroy animal_history' do
    assert_difference('AnimalHistory.count', -1) do
      delete animal_history_url(@animal_history)
    end

    assert_redirected_to animal_histories_url
  end
end

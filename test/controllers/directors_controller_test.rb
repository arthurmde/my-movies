require 'test_helper'

class DirectorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @director = directors(:one)
  end

  test "should get index" do
    get directors_url
    assert_response :success
  end

  test "should get new" do
    get new_director_url
    assert_response :success
  end

  test "should create director" do
    assert_difference('Director.count') do
      post directors_url, params: { director: { birthdate: @director.birthdate, country: @director.country, gender: @director.gender, name: @director.name, type: @director.type } }
    end

    assert_redirected_to director_url(Director.last)
  end

  test "should show director" do
    get director_url(@director)
    assert_response :success
  end

  test "should get edit" do
    get edit_director_url(@director)
    assert_response :success
  end

  test "should update director" do
    patch director_url(@director), params: { director: { birthdate: @director.birthdate, country: @director.country, gender: @director.gender, name: @director.name, type: @director.type } }
    assert_redirected_to director_url(@director)
  end

  test "should destroy director" do
    assert_difference('Director.count', -1) do
      delete director_url(@director)
    end

    assert_redirected_to directors_url
  end
end

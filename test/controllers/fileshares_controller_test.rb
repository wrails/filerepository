require 'test_helper'

class FilesharesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fileshare = fileshares(:one)
  end

  test "should get index" do
    get fileshares_url
    assert_response :success
  end

  test "should get new" do
    get new_fileshare_url
    assert_response :success
  end

  test "should create fileshare" do
    assert_difference('Fileshare.count') do
      post fileshares_url, params: { fileshare: { category: @fileshare.category, description: @fileshare.description, file: @fileshare.file, image: @fileshare.image, keywords: @fileshare.keywords, title: @fileshare.title } }
    end

    assert_redirected_to fileshare_url(Fileshare.last)
  end

  test "should show fileshare" do
    get fileshare_url(@fileshare)
    assert_response :success
  end

  test "should get edit" do
    get edit_fileshare_url(@fileshare)
    assert_response :success
  end

  test "should update fileshare" do
    patch fileshare_url(@fileshare), params: { fileshare: { category: @fileshare.category, description: @fileshare.description, file: @fileshare.file, image: @fileshare.image, keywords: @fileshare.keywords, title: @fileshare.title } }
    assert_redirected_to fileshare_url(@fileshare)
  end

  test "should destroy fileshare" do
    assert_difference('Fileshare.count', -1) do
      delete fileshare_url(@fileshare)
    end

    assert_redirected_to fileshares_url
  end
end

require 'test_helper'

class PoliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poly = polies(:one)
  end

  test "should get index" do
    get polies_url
    assert_response :success
  end

  test "should get new" do
    get new_poly_url
    assert_response :success
  end

  test "should create poly" do
    assert_difference('Poly.count') do
      post polies_url, params: { poly: { author: @poly.author, bugtracker: @poly.bugtracker, description: @poly.description, docs: @poly.docs, downloads: @poly.downloads, gitsshurl: @poly.gitsshurl, license: @poly.license, name: @poly.name, repotype: @poly.repotype, submittedby: @poly.submittedby, website: @poly.website } }
    end

    assert_redirected_to poly_url(Poly.last)
  end

  test "should show poly" do
    get poly_url(@poly)
    assert_response :success
  end

  test "should get edit" do
    get edit_poly_url(@poly)
    assert_response :success
  end

  test "should update poly" do
    patch poly_url(@poly), params: { poly: { author: @poly.author, bugtracker: @poly.bugtracker, description: @poly.description, docs: @poly.docs, downloads: @poly.downloads, gitsshurl: @poly.gitsshurl, license: @poly.license, name: @poly.name, repotype: @poly.repotype, submittedby: @poly.submittedby, website: @poly.website } }
    assert_redirected_to poly_url(@poly)
  end

  test "should destroy poly" do
    assert_difference('Poly.count', -1) do
      delete poly_url(@poly)
    end

    assert_redirected_to polies_url
  end
end

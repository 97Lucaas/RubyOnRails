require "test_helper"

class AnnivsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @anniv = annivs(:one)
  end

  test "should get index" do
    get annivs_url
    assert_response :success
  end

  test "should get new" do
    get new_anniv_url
    assert_response :success
  end

  test "should create anniv" do
    assert_difference('Anniv.count') do
      post annivs_url, params: { anniv: { active: @anniv.active, birthdate: @anniv.birthdate, name: @anniv.name } }
    end

    assert_redirected_to anniv_url(Anniv.last)
  end

  test "should show anniv" do
    get anniv_url(@anniv)
    assert_response :success
  end

  test "should get edit" do
    get edit_anniv_url(@anniv)
    assert_response :success
  end

  test "should update anniv" do
    patch anniv_url(@anniv), params: { anniv: { active: @anniv.active, birthdate: @anniv.birthdate, name: @anniv.name } }
    assert_redirected_to anniv_url(@anniv)
  end

  test "should destroy anniv" do
    assert_difference('Anniv.count', -1) do
      delete anniv_url(@anniv)
    end

    assert_redirected_to annivs_url
  end
end

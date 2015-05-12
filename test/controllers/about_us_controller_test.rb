require 'test_helper'

class AboutUsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should render correct template for index" do
    get :index
    assert_template :index
    assert_template layout: 'layouts/application'
    assert_select 'title', {count: 1, text: 'Кафедра військової підготовки КПІ' },
        'Wrong title or more than one title on page'
  end

  test "should get history of faculty" do
    get :history_of_faculty
    assert_response :success
  end

  test "should render correct template for history" do
    get :history_of_faculty
    assert_template :history_of_faculty
    assert_template layout: 'layouts/application'
    assert_select 'title', {count: 1, text: 'Історія кафедри' },
        'Wrong title or more than one title on page'
    assert_select '#content img', 6, 'Wrong photo count'
    assert_select '#content p', 49, 'Wrong paragraph count'
  end

  test "should get management team" do
    get :management_team
    assert_response :success
  end

  test "should render correct template for management team" do
    get :management_team
    assert_template :management_team
    assert_template layout: 'layouts/application'
    assert_select 'title', {count: 1, text: 'Керівний склад' },
        'Wrong title or more than one title on page'
    assert_select '#content img', 2, 'Wrong photo count'
    assert_select '#content .content-body p', 7, 'Wrong paragraph count in content body'
  end
end

require "test_helper"

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    # ルートURLへのリンクはhome内に2つあるのでcount: 2と記述
    assert_select "a[href=?]", root_path, count: 2
    # ?は自動的に'help_path'に切り替わる
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
  end
end

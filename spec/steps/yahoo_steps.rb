# coding: utf-8

step ":key がキーワード" do |name|
  @key = name
end

step ":category が検索種別" do |name|
  @category = name
end

step "検索種別をクリック" do
  visit '/'
  click_link('isearch')
  puts current_path
  puts current_url
  expect(current_path).to eq '/'

end


step "検索をクリック" do
  visit current_path
  within("[name=sf1]") do
    fill_in 'p', :with => @key
    click_on '検索'
  end

end


step "一覧を表示" do
  # 一覧ページであること
end





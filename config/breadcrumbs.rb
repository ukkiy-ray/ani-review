crumb :root do
  link "Home", root_path
end

crumb :post do |post|
  link "レビュー詳細", post_path(post)
  parent :root
end

crumb :squeeze do
  link "カテゴリー別", squeeze_posts_path
  parent :root
end

crumb :ranking do
  link "いいね数ランキング", ranking_posts_path
  parent :root
end

crumb :user do |user|
  link "#{user.nickname}さんのページ", user_path(user)
  parent :root
end

crumb :likes_user do |user|
  link "いいね一覧", likes_user_path(user)
  parent :user, user
end

crumb :following_user do |user|
  link "フォローユーザー一覧", following_user_path(user)
  parent :user, user
end

crumb :followers_user do |user|
  link "フォロワー一覧", followers_user_path(user)
  parent :user, user
end

crumb :post_search do
  link "フリーワード検索", post_search_posts_path
  parent :root
end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).
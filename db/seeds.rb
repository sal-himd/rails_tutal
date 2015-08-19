5.times do |n|
  name = "name#{n + 1}"
  email = "example#{n + 1}@exemple.com"
  password = "password"
  User.create!(name: name, email: email, password: password, password_confirmation: password)
end

5.times do |n|
  title = "title#{n + 1}"
  content = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
  user_id = 1 + Random.new.rand(5)
  Post.create!(title: title, content: content, user_id: user_id)
end
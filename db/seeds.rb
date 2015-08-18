5.times do |n|
  name = "name#{n + 1}"
  email = "example#{n + 1}@exemple.com"
  password = "password"
  User.create!(name: name, email: email, password: password, password_confirmation: password)
  n += 1
end

5.times do |n|
  title = "title#{n + 1}"
  content = "content" + "content" * Random.new.rand(10)
  user_id = 1 + Random.new.rand(99)
  Post.create!(title: title, content: content, user_id: user_id)
end
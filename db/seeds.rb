alyssa = User.create!(first_name: "Alyssa", last_name: "Person", email: "user@junk.com", username: "alyssa", password: "123456")
mike = User.create!(first_name: "Mike", last_name: "Person", email: "stuff@jokes.com", username: "mike", password: "123456")
matt = User.create!(first_name: "Matt", last_name: "Person", email: "woofbork@doggo.com", username: "matt", password: "123456")
mo = User.create!(first_name: "Maurice", last_name: "Person", email: "setsdasdas@hotmail.com", username: "maurice", password: "123456")
duke = User.create!(first_name: "Duke", last_name: "Person", email: "bored@hatsarecool.com", username: "duke", password: "123456")

Post.create!(photo_url: "https://static.tumblr.com/06ccf3b8566d2de1879f620987e30bec/nayuswz/6Ctosfaei/tumblr_static_tumblr_static_9al0ol6aee4gk8084sss8cw8o_640.jpg", question: "You gonna eat that?", user_id: 2)
Post.create!(photo_url: "https://i.imgflip.com/1c8yl4.jpg", question: "How can I help you?", user_id: 3)

Answer.create!(user_id: 2, post_id: 1, description_text: "Yasssssss")
Answer.create!(user_id: 4, post_id: 2, description_text: "My owner left for work. Are they gone forever?")

Comment.create!(description_text: "Proud of you!", commentable_type: "answer", user_id: 1, commentable_id: 1)
Comment.create!(description_text: "This doggo helped me fix my router. 10/10, would recommend", commentable_type: "post", user_id: 5, commentable_id: 2)

Vote.create!(votable_type: "post", votable_id: 1, user_id: 2)
Vote.create!(votable_type: "answer", votable_id: 1, user_id: 3)












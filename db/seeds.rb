
# f_name = Faker::Name.first_name
# l_name = Faker::Name.last_name
# email = Faker::Internet.safe_email
# user = Faker::Internet.user_name(8..15)
# pass = Faker::Internet.password(12)

# 50.times { User.create!(first_name: f_name, last_name: l_name, email: email, username: user, password: pass) }
50.times { User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, username: Faker::Internet.user_name(8..15), password: Faker::Internet.password(12)) }


Post.create!(photo_url: "https://static.tumblr.com/06ccf3b8566d2de1879f620987e30bec/nayuswz/6Ctosfaei/tumblr_static_tumblr_static_9al0ol6aee4gk8084sss8cw8o_640.jpg", vote_tally: rand(1..200),  question: "You gonna eat that?", user_id: 1)
Post.create!(photo_url: "https://i.imgflip.com/1c8yl4.jpg", question: "How can I help you?", vote_tally: rand(1..200), user_id: 2)
Post.create!(photo_url: "https://www.puppyleaks.com/wp-content/uploads/2015/04/smilinggreyhound.png", question: "What's so funny?", user_id: 3)
Post.create!(photo_url: "https://cdn.vox-cdn.com/thumbor/V7gNNhr5rhLT82jcQn-d3-yvyRA=/0x0:1437x775/1200x800/filters:focal(605x274:833x502)/cdn.vox-cdn.com/uploads/chorus_image/image/50880497/Screen_20Shot_202016-09-16_20at_2012.09.31_20PM.0.png", question: "Life uh.... finds a way?", vote_tally: rand(1..200),  user_id: 4)
Post.create!(photo_url: "https://i.redd.it/0c9faw5ewz0y.jpg", question: "Does anybody have a hack for getting a stuck pupper unstuck?", vote_tally: rand(1..200),  user_id: 5)
Post.create!(photo_url: "https://i.chzbgr.com/full/9010300416/hECA1013A/", question: "Anybody want some soup?", vote_tally: rand(1..200),  user_id: 6)
Post.create!(photo_url: "http://i0.kym-cdn.com/photos/images/original/001/251/674/c65.jpg", question: "Any tips on raising a pupper and a chick?", vote_tally: rand(1..200),  user_id: 7)
Post.create!(photo_url: "https://yt3.ggpht.com/-62McZkeAieY/AAAAAAAAAAI/AAAAAAAAAAA/L8EBXyw4rvg/s900-c-k-no-mo-rj-c0xffffff/photo.jpg", question: "Halp! I broke my doggo!", vote_tally: rand(1..200),  user_id: 8)
Post.create!(photo_url: "https://vetstreet.brightspotcdn.com/dims4/default/62b9061/2147483647/thumbnail/645x380/quality/90/?url=https%3A%2F%2Fvetstreet-brightspot.s3.amazonaws.com%2Fe7%2Fa7%2F1ca411274abab84388a7409dfcc9%2Fgreyhound-ap-qlvhmt-645-x-380.jpg", question: "Cute or super cute?", vote_tally: rand(1..200),  user_id: 9)
Post.create!(photo_url: "http://borkborkiamdoggo.com/wp-content/uploads/2016/12/doggo-is-questioning-reality-1.jpg", question: "Halp! My pupper is too spooky!", vote_tally: rand(1..200),  user_id: 10)
Post.create!(photo_url: "https://img.buzzfeed.com/buzzfeed-static/static/2017-07/20/15/enhanced/buzzfeed-prod-fastlane-01/enhanced-15135-1500578080-1.
  jpg?downsize=715:*&output-format=auto&output-quality=auto", question: "Good boy?", vote_tally: rand(1..200),  user_id: 11)
Post.create!(photo_url: "https://www.aspca.org/sites/default/files/dog-care_general-dog-care_main-image.jpg", question: "What do dogs eat, anyway?", user_id: 12)
Post.create!(photo_url: "http://i.imgur.com/NGyuNNe.jpg", question: "How often should I let my doggo borrow the car?", vote_tally: rand(1..200),  user_id: 13)
Post.create!(photo_url: "https://scontent-sea1-1.cdninstagram.com/t51.2885-15/s480x480/e35/c9.0.1061.1061/13392900_836520003119649_764459364_n.jpg?ig_cache_key=MTI2NDkyNzQxMDY3ODk3MTgwNA%3D%3D.2.c", question: "Does anyone else's doggo make this face?", vote_tally: rand(1..200),  user_id: 14)
Post.create!(photo_url: "http://i0.kym-cdn.com/photos/images/original/001/200/810/9bc.jpg", question: "Fruit or doggo?", vote_tally: rand(1..200),  user_id: 15)
Post.create!(photo_url: "https://pics.me.me/smooth-doggo-17465058.png", question: "How smooth is this doggo/10?", vote_tally: rand(1..200),  user_id: 16)
Post.create!(photo_url: "https://media.giphy.com/media/Z3aQVJ78mmLyo/source.gif", question: "How do you get a pupper to calm down?", vote_tally: rand(1..200),  user_id: 17)
Post.create!(photo_url: "http://vignette3.wikia.nocookie.net/soma/images/2/29/18361-doge-follow-your-dreams.jpg/revision/latest?cb=20151028152235", question: "Should I encourage my doggo to pursue her PhD??", vote_tally: rand(1..200),  user_id: 18)
Post.create!(photo_url: "https://www.shelterluv.com/sites/default/files/animal_pics/464/2017/06/23/21/20170623212057.png", question: "My dog's tongue appears to be broken. Has anyone seen this before?", vote_tally: rand(1..200),  user_id: 19)
Post.create!(photo_url: "https://tr2.cbsistatic.com/hub/i/2014/05/15/f8964afd-bd82-4e0e-bcbe-e927363dcdc1/3b858e39e2cf183b878f54cad0073a67/codedoge.jpg", vote_tally: rand(1..200), question: "Smartest doggo ever?", user_id: 20)



Answer.create!(user_id: rand(1..50), post_id: rand(1..20), description_text: "Yasssssss!", vote_tally: rand(1..200))
Answer.create!(user_id: rand(1..50), post_id: rand(1..20), description_text: "My owner left for work. Are they gone forever?", vote_tally: rand(1..200))
Answer.create!(user_id: rand(1..50), post_id: rand(1..20), description_text: "The goodness of this boi is much wow", vote_tally: rand(1..200))
Answer.create!(user_id: rand(1..50), post_id: rand(1..20), description_text: "What do you guys like better, puppers or doggos?", vote_tally: rand(1..200))
Answer.create!(user_id: rand(1..50), post_id: rand(1..20), description_text: "I am angerry", vote_tally: rand(1..200))
Answer.create!(user_id: rand(1..50), post_id: rand(1..20), description_text: "2 BITS", vote_tally: rand(1..200))
Answer.create!(user_id: rand(1..50), post_id: rand(1..20), description_text: "Chris's dog, Doc, is sooo much cooler.", vote_tally: rand(1..200))
Answer.create!(user_id: rand(1..50), post_id: rand(1..20), description_text: "10/10", vote_tally: rand(1..200))
Answer.create!(user_id: rand(1..50), post_id: rand(1..20), description_text: "I dropped my phone in the toilet. Is this the right thread...? HALP!", vote_tally: rand(1..200))
Answer.create!(user_id: rand(1..50), post_id: rand(1..20), description_text: "I lost 80 pounds in ten minutes with this simple trick. Go to www.identitytheft.scam", vote_tally: rand(1..200))
Answer.create!(user_id: rand(1..50), post_id: rand(1..20), description_text: "OMG, what a cute pupper!", vote_tally: rand(1..200))
Answer.create!(user_id: rand(1..50), post_id: 1, description_text: "Those glasses don't even have lenses", vote_tally: rand(1..200))
Answer.create!(user_id: rand(1..50), post_id: rand(1..20), description_text: "Fancy!", vote_tally: rand(1..200))
Answer.create!(user_id: rand(1..50), post_id: rand(1..20), description_text: "I need moar doggos in my life.", vote_tally: rand(1..200))
Answer.create!(user_id: rand(1..50), post_id: rand(1..20), description_text: "This pupper reminds me of my old dog, Maria Blunderfield-Wardyworth", vote_tally: rand(1..200))
Answer.create!(user_id: rand(1..50), post_id: rand(1..20), description_text: "So many doggos to pet, so little time...", vote_tally: rand(1..200))
Answer.create!(user_id: rand(1..50), post_id: rand(1..20), description_text: "Where can I get a cute doggo like that?!", vote_tally: rand(1..200))
Answer.create!(user_id: rand(1..50), post_id: rand(1..20), description_text: "Whoa!", vote_tally: rand(1..200))
Answer.create!(user_id: rand(1..50), post_id: rand(1..20), description_text: "That doge knows how to party!", vote_tally: rand(1..200))
Answer.create!(user_id: rand(1..50), post_id: rand(1..20), description_text: "D'awwwwww!!", vote_tally: rand(1..200))
Answer.create!(user_id: rand(1..50), post_id: rand(1..20), description_text: "That doggo owes me $20!", vote_tally: rand(1..200))


Comment.create!(description_text: "Proud of you!", commentable_type: "Answer", user_id: rand(1..50), commentable_id: rand(1..21))
Comment.create!(description_text: "Niiiiice", commentable_type: "Answer", user_id: rand(1..50), commentable_id: rand(1..21))
Comment.create!(description_text: "Whoa!", commentable_type: "Answer", user_id: rand(1..50), commentable_id: rand(1..21))
Comment.create!(description_text: "Geeeez", commentable_type: "Answer", user_id: rand(1..50), commentable_id: rand(1..21))
Comment.create!(description_text: "That doggo owes me $20!", commentable_type: "Answer", user_id: rand(1..50), commentable_id: rand(1..21))
Comment.create!(description_text: "That doge knows how to party!", commentable_type: "Answer", user_id: rand(1..50), commentable_id: rand(1..21))
Comment.create!(description_text: "I need moar doggos in my life.", commentable_type: "Answer", user_id: rand(1..50), commentable_id: rand(1..21))
Comment.create!(description_text: "This pupper reminds me of my old dog, Maria Blunderfield-Wardyworth",commentable_type: "Answer", user_id: rand(1..50), commentable_id: rand(1..21))
Comment.create!(description_text: "2 BITS", commentable_type: "Answer", user_id: rand(1..50), commentable_id: rand(1..21))
Comment.create!(description_text: "Yasssssss!", commentable_type: "Answer", user_id: rand(1..50), commentable_id: rand(1..21))

Comment.create!(description_text: "This doggo helped me fix my router. 10/10, would recommend", commentable_type: "Post", user_id: rand(1..50), commentable_id: rand(1..20))
Comment.create!(description_text: "Where can I get a cute doggo like that?!", commentable_type: "Post", user_id: rand(1..50), commentable_id: rand(1..20))
Comment.create!(description_text: "D'awwwwww!!", commentable_type: "Post", user_id: rand(1..50), commentable_id: rand(1..20))
Comment.create!(description_text: "I need moar doggos in my life.", commentable_type: "Post", user_id: rand(1..50), commentable_id: rand(1..20))
Comment.create!(description_text: "This pupper reminds me of my old dog, Maria Blunderfield-Wardyworth", commentable_type: "Post", user_id: rand(1..50), commentable_id: rand(1..20))
Comment.create!(description_text: "2 BITS", commentable_type: "Post", user_id: rand(1..50), commentable_id: rand(1..20))
Comment.create!(description_text: "Yasssssss!", commentable_type: "Post", user_id: rand(1..50), commentable_id: rand(1..20))
Comment.create!(description_text: "So many doggos to pet, so little time...", commentable_type: "Post", user_id: rand(1..50), commentable_id: rand(1..20))
Comment.create!(description_text: "I dropped my phone in the toilet. Is this the right thread...? HALP!", commentable_type: "Post", user_id: rand(1..50), commentable_id: rand(1..20))
Comment.create!(description_text: "I lost 80 pounds in ten minutes with this simple trick. Go to www.identitytheft.scam", commentable_type: "Post", user_id: rand(1..50), commentable_id: rand(1..20))


Vote.create!(votable_type: "Post", votable_id: 1, user_id: 2)
Vote.create!(votable_type: "Answer", votable_id: 1, user_id: 3)




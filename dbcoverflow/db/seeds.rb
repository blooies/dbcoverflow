b = User.create({username: "Bev", email: "bev@email.com", password: "password", password_confirmation: "password"})
s = User.create({username: "Siyan", email: "siyan@email.com", password: "password", password_confirmation: "password"})
c = User.create({username: "Xine", email: "xine@email.com", password: "password", password_confirmation: "password"})
a = User.create({username: "Alex", email: "alex@email.com", password: "password", password_confirmation: "password"})

x = Question.create({body: "Favorite restaurants near DBC?", user: s})
y = Question.create({body: "How did you survive your first week?", user: b})
z = Question.create({body: "How do you guys feel about the culture of DBC?", user: a})

x.vote = Vote.create(score: 1)
y.vote = Vote.create(score: 4)
z.vote = Vote.create(score: 3)

q = Answer.create(question: x, user: s, body: "Roti!")
w = Answer.create(question: x, user: c, body: "Chiptole, ftw.")
e = Answer.create(question: y, user: c, body: "I didn't.")
r = Answer.create(question: y, user: b, body: "I basically ran on no sleep...but it gets better. I promise.")

q.vote = Vote.create(score: 3)
w.vote = Vote.create(score: 2)
e.vote = Vote.create(score: 9)
r.vote = Vote.create(score: 7)


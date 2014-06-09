b = User.create({username: "Bev", email: "bev@email.com", password: "password", password_confirmation: "password"})
s = User.create({username: "Siyan", email: "siyan@email.com", password: "password", password_confirmation: "password"})
c = User.create({username: "Xine", email: "xine@email.com", password: "password", password_confirmation: "password"})
a = User.create({username: "Alex", email: "alex@email.com", password: "password", password_confirmation: "password"})

x = Question.create({body: "What is Insung's fave pack of smokes?", user: s})
y = Question.create({body: "Why does Insung wear socks with Toms?", user: b})
z = Question.create({body: "Why is Insung so mean to everyone all the time?", user: a})

x.vote = Vote.create(score: 1)
y.vote = Vote.create(score: 4)
z.vote = Vote.create(score: 3)

q = Answer.create(question: x, user: s, body: "Marlboro")
w = Answer.create(question: x, user: c, body: "American Spirit")
e = Answer.create(question: y, user: c, body: "He has no shame")
r = Answer.create(question: z, user: b, body: "He bullies me all the time. He has no heart.")

q.vote = Vote.create(score: 3)
w.vote = Vote.create(score: 2)
e.vote = Vote.create(score: 9)
r.vote = Vote.create(score: 7)


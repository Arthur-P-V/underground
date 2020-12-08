Comment.create!([
  {content: "Agreed", user_id: nil, post_id: 1},
  {content: "I think we both just suck", user_id: nil, post_id: 2},
  {content: "I love that game", user_id: nil, post_id: 3},
  {content: "Oh my gosh I love that game too", user_id: nil, post_id: 3}
])
Post.create!([
  {title: "Speedrunners", content: "Speedrunners is the best", user_id: 1},
  {title: "Shovel Knight", content: "Shovel Knight is hard", user_id: 1},
  {title: "Lethal League", content: "Super Intense", user_id: 1},
  {title: "Rawmen", content: "This game is fantastic I can't wait till it comes out", user_id: 1}
])
User.create!([
  {name: "Arthur", email: "arthur@example.com", password_digest: "$2a$12$hlF/qopEpG78r9QsUMTU.u0QN3wBzk9mGNPjsWMaWtavZnmzfPYsy", admin: true},
  {name: "Oscar", email: "o@example.com", password_digest: "$2a$12$MpbMHSq5H4Ylaw/RNOr.YuLdT7dgEuLGJ.kRVi7Ldzu0GsoQj4iIW", admin: false},
  {name: "Ryker", email: "r@example.com", password_digest: "$2a$12$vBwY3eMugnIiFMFtagjWmelc1LTut0.VU8EmsG4FOrfZ01nQFCPiK", admin: false}
])

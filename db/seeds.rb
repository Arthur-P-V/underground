User.create!([
  { name: "Arthur", email: "arthur@example.com", password_digest: "$2a$12$hlF/qopEpG78r9QsUMTU.u0QN3wBzk9mGNPjsWMaWtavZnmzfPYsy", admin: true },
  { name: "Oscar", email: "o@example.com", password_digest: "$2a$12$MpbMHSq5H4Ylaw/RNOr.YuLdT7dgEuLGJ.kRVi7Ldzu0GsoQj4iIW", admin: false },
  { name: "Ryker", email: "r@example.com", password_digest: "$2a$12$vBwY3eMugnIiFMFtagjWmelc1LTut0.VU8EmsG4FOrfZ01nQFCPiK", admin: false },
  { name: "Donna", email: "d@example.com", password_digest: "$2a$12$5ZekF/aI07l4yburElDLM.tRYpbZeXJEZt.QSGpMRHCIzJb6Bt47G", admin: false },
])
Post.create!([
  { title: "Speedrunners", content: "Speedrunners is the best", user_id: 1 },
  { title: "Shovel Knight", content: "Shovel Knight is hard", user_id: 1 },
  { title: "Lethal League", content: "Super Intense", user_id: 1 },
  { title: "Rawmen", content: "This game is fantastic I can't wait till it comes out", user_id: 1 },
  { title: "Authentication works", content: "delete this one", user_id: 1 },
  { title: "Etterna", content: "Why doesn't anyone play rhythm games anymore :(", user_id: 1 },
])
Comment.create!([
  { content: "I think we both just suck", name: "Arthur", user_id: 1, post_id: 2 },
  { content: "Oh my gosh I love that game too", name: "Arthur", user_id: 1, post_id: 3 },
  { content: "I love that game", name: "Ryker", user_id: 3, post_id: 3 },
  { content: "Agreed", name: "Oscar", user_id: 2, post_id: 1 },
  { content: "The ball moves so fast", name: "Arthur", user_id: 1, post_id: 3 },
])

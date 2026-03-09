
// Collection: posts
db.posts.insertMany([
  {
    post_id: "p1",
    user_id: "11111111-1111-1111-1111-111111111111",
    restaurant_id: "aaaaaaaa-1111-1111-1111-111111111111",
    text: "Best pizza in Berlin!",
    created_at: new Date(),
    likes: 5
  },
  {
    post_id: "p2",
    user_id: "22222222-2222-2222-2222-222222222222",
    restaurant_id: "bbbbbbbb-2222-2222-2222-222222222222",
    text: "Fresh sushi and great service!",
    created_at: new Date(),
    likes: 3
  }
]);

// Add comment
db.posts.updateOne(
  { post_id: "p1" },
  { $push: { comments: {
      user_id: "33333333-3333-3333-3333-333333333333",
      text: "Totally agree!",
      created_at: new Date()
  }}}
);

// Like post
db.posts.updateOne(
  { post_id: "p1" },
  { $inc: { likes: 1 } }
);

// Query: Get posts by restaurant
db.posts.find({ restaurant_id: "aaaaaaaa-1111-1111-1111-111111111111" });

// Query: Most liked posts
db.posts.find().sort({ likes: -1 }).limit(5);
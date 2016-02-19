I will need the following:
- Users
  - Can Edit, Create, Delete own posts
  - has_many :posts
  - Usere have a name, 

-Admin
  - Can do anything to any post
  - Not sure if I need a table for this

- Posts
  - belongs_to :user ### check on this
  - Posts have content, title

- UserPosts    ---- this will be the join table
  - belongs_to :user
  - belongs_to :post

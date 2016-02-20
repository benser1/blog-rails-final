I will need the following:
- Users
  - Can Edit, Create, Delete own posts
  - has_many :posts
  - Users have a name, 

-Admin
  - Can do anything to any post
  - Not sure if I need a table for this

- Posts
  - belongs_to :user ### check on this
  - Posts have content, title
  -Form
    - Includes Title, Content, date created?, Category check-boxes
      - Maybe let's users select themselves?
      - Maybe have an admin check box?
  - View all posts goes in index.html.erb
  - Create delete button
    - Users can delete their own post
    - Admins can delete any post

- UserPosts    ---- this will be the join table
  - belongs_to :user
  - belongs_to :post




  - Maybe allow for comments?? *****************

  - See why updated time is not your time zone ?


  - enum roles [:normal. admin, guest?]

  - define roles with CanCan attribute method

  - If No blog posts show a message on the screen

  - Index Page
    - Limit how much content is actually shown

  - Link for Comments
  https://learn.co/tracks/full-stack-web-development/rails/associations-and-rails/has-many-through-in-forms


  - Order Posts by date?

  - Need to be able to show only the user's posts that is currently logged in

  - Give option to make posts public or private?
    - "My Posts" "Public Posts"
    - If public, show author name

  - Anyone can view public posts. Only users can comment

  - Login with Facebook























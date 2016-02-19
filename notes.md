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

- UserPosts    ---- this will be the join table
  - belongs_to :user
  - belongs_to :post



- Create a Welcome Controller to replace Rails main page  
  - #home method
    - root 'welcome#home'
  - "Welcome to Blog ........"
  - ********** Figure out how to welcome them by first name ************





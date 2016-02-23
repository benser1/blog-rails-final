class Ability
  include CanCan::Ability

  def initialize(user)

    # user.can :read, Post
    # return if user.guest?

    # user.can :update, :read, :create, :destroy, Post {owner_id: user.id}
    # return if user.normal?

    # user.can :manage, Post if user.admin?

    #-------------------------------------------------------------
    can :read, Post
    if !user.nil?
        can :create, Post, :user => user
        can :update, Post, :user => user
        can :destroy, Post, :user => user
        # can :comment, Post
    else user.admin? 
        can :manage, Post
    end
  end
end ## class end 

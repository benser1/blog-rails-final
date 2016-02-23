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
    if user.admin? 
        can :manage, :all
    elsif !user.nil?
        can :create, Post, :user => user
        can :update, Post, :user => user
        can :destroy, Post, :user => user
        # can :comment, Post
    end
  end
end ## class end 

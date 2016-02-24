class Ability
  include CanCan::Ability

  def initialize(user)
    # can :read, :all
    if user.admin? 
        can :manage, :all
    elsif !user.nil?
        can :create, Post, :user => user
        can :update, Post, :user => user
        can :destroy, Post, :user => user
        can :read, :all
    end
  end
end ## class end 

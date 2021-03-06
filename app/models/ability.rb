class Ability
  include CanCan::Ability

  def initialize(user)
    if user.present?
      if user.moderator?
        can :manage, :all
      else
        can :read, :all
        can :create, Resource
      end
    else
      can :read, :all
      can :upvote, :all
    end
  end
end

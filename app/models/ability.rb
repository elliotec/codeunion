class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new #unlogged in user
    if user.moderator?
      can :manage, :all
    else
      can :read, :all
      can :create, Resource
    end
  end
end

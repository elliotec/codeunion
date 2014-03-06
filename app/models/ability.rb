class Ability
  include CanCan::Ability

  def initialize(user)
    if user.present?
    # user ||= User.new #unlogged in user
      if user.moderator?
        can :manage, :all
      else
        can :read, :all
        can :create, Resource
      end
    else
      can :read, :all
    end
  end
end

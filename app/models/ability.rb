# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.admin?
      can :manage, :all
    elsif user.manager?
      can [:read, :update], Patient
      can :manage, User, id: user.id
      can :manage, Card, License, Diet, License, Slot
    elsif user.professional?
      can [:read, :update], Patient
      can :manage, User, id: user.id
      can :manage, Card, License, Diet, License, Slot
   end
  end
end

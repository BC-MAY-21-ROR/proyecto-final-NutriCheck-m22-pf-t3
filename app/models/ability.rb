# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.admin?
      can :manage, :all
    elsif user.manager?
      can [:read, :update], Patient
      can [:read, :edit], Manager
      can :manage, User, user: user
    elsif user.professional?
      can [:read, :update], Patient
      can [:read, :edit], Professional
      can :manage, User, user: user
   end
  end
end

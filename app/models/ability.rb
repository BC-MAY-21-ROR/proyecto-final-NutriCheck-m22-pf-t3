# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(model)
    case model
    when User
      if model.admin?
        can :manage, :all
      elsif model.manager?
        can :manage, Patient
        can :manage, User, id: model.id
        can :read, User
        can :manage, Card, License, Diet, Slot, Schedule
        can :manage, Speciality
      elsif model.professional?
        can :manage, Patient
        can :manage, User, id: model.id
        can :read, User
        can :manage, Card, License, Diet, Slot, Schedule
        can :manage, Speciality
     end
    when Patient
    can :manage, Patient, id: model.id
    can :see, Appointment
    end
end
end

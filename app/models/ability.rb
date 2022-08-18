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
        can :manage, User, role: 'professional'
        cannot :index, User
        can :manage, Card
        can :read, License
        can :manage, Appointment
        can :manage, Speciality
        can :manage, Service
      elsif model.professional?
        can :manage, Patient
        can :manage, User, id: model.id
        can :manage, Appointment
        can :manage, Slot
        can :manage, License
        cannot :index, User
        can :manage, Card, License, Diet, Slot, Schedule
        can :manage, Speciality
     end
    when Patient
    can :manage, Patient, id: model.id
    can :read, Appointment
    can [:professionals, :services], Slot
    end
end
end

# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    
   if user.admin?
      can :manage, :all
    else
      can :destroy, Group do |group|
        group.user == user
      end

      can :update, Group do |group|
        group.user == user
      end

      can :destroy, Entity do |entity|
        entity.user == user
      end

      can :update, Entity do |entity|
        entity.user == user
      end

      can :create, Group
      can :create, Entity
    end
  end
end

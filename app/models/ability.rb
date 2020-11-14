# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    can :read, :all #permission for every user, even if not logged in
    
      user ||= User.new # guest user (not logged in)
      if user.buyer_role? # additional permissions for logged in users
        can :read, :create, :update, :destroy, Amiibo, user_id: user.id
      end 
      if user.admin_role?
        can :manage, :all
        can :access, :rails_admin
        can :manage, :dashboard 
      end
      if user.customer_role?
        can :read, Amiibo
        can :crud, User, user_id: user.id
      end 
  end 

    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
end

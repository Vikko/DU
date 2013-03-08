class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here.
    #
    user ||= User.new # guest user (not logged in)
    if (user.role == "editor")
      can :manage, :all
    else
      can :read, :all, :published => true
      can :create, Comment
      can :update, Comment do |comment|
        comment && (comment.email == user.email)
      end
      if (user.role == "blogger")
        can :create, Blogpage
        can :unpublish, Blogpage
        can :update, Page do |page|
          page && page.author == user.email
        end
      end
    end
    #
    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end

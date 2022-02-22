class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
      # We want to filter only the records that the user is allowed to access, e.g.
      # scope.where(user: user)
      # scope.where(published: true)
      # scope.where(archived: false)
    end
  end

  def show?
    # everyone can view a restaurant, so show? is always true
    true
  end

  # # We don't need the new? because it's the same as the parent (ApplicationPolicy)
  # def new?
  #   # everyone can create a restaurant, so new? is always true
  #   create?
  # end

  def create?
    # everyone can create a restaurant, so create? is always true
    true
  end

  # # We don't need the edit? because it's the same as the parent (ApplicationPolicy)
  # def edit?
  #   # only the restaurant's owner is allowed to view the edit form for the restaurant
  #   update?
  # end

  def update?
    # only the restaurant's owner is allowed to update the restaurant
    # in the controller, we had: current_user == @restaurant.user
    # in pundit, we have:
    # current_user => user
    # @restaurant => record (whatever was passed to the authorize method in the controller)
    user_is_owner? || user_is_admin?
  end

  def destroy?
    # only the restaurant's owner is allowed to destroy the restaurant
    user_is_owner? || user_is_admin?
  end

  private

  def user_is_owner?
    user == record.user
  end

  def user_is_admin?
    user.admin?
  end
end

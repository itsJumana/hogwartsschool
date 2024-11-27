class FollowersController < ApplicationController
  before_action :authenticate_wizard!
  before_action :set_wizard

  # Follow a wizard
  def follow
    if current_wizard != @wizard
      Follower.create_or_find_by(follower_id: current_wizard.id, followed_id: @wizard.id)
    end
    redirect_to wizard_path(@wizard)
  end

  # Unfollow a wizard
  def unfollow
    if current_wizard != @wizard
      follow_record = Follower.find_by(follower_id: current_wizard.id, followed_id: @wizard.id)
      if follow_record
        follow_record.destroy
      end
    end
    redirect_to wizard_path(@wizard)
  end

  private

  def set_wizard
    @wizard = Wizard.find(params[:followed_id])
  end
end

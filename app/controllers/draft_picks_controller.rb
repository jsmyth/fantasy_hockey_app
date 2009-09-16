class DraftPicksController < ApplicationController
  def update
    @draft_pick = DraftPick.find(params[:id])
    if @draft_pick.update_attributes(params[:draft_pick])
      flash[:notice] = "Successfully updated draft pick."
    else
      flash[:error] = "Can't update draft pick."
    end
    redirect_to @draft_pick
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    flash[:notice] = "Successfully destroyed game."
    redirect_to games_url
  end
end

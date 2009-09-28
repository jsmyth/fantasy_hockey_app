# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def current_fantasy_season_state_path
    if @current_state == 'pre_season' && commissioner?
      foo = link_to "** SEED TEAMS **", fantasy_season_path(@current_fantasy_season)
      foo += "\n|"
      return foo
    elsif @current_state == 'draft_snapped' && commissioner?
      foo = link_to "#{@current_fantasy_season.league.name} #{@current_fantasy_season.name} Draft Order", draft_order_fantasy_season_path(@current_fantasy_season)
      foo += "\n|"
      return foo
    elsif @current_state == 'draft_frozen' && commissioner?
      foo = link_to "** DRAFT **", draft_fantasy_season_path(@current_fantasy_season)
      foo += "\n|"
      return foo
    elsif @current_state == 'regular_season'
      return link_to "** DRAFT RESULTS **", draft_results_fantasy_season_path(@current_fantasy_season)
    end
  end
  
  def commissioner?
    return true unless @commissioner.empty?
  end
end

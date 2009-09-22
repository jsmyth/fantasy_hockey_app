class PlayersController < InheritedResources::Base
  respond_to :html, :xml
  respond_to :json, :only => :index
  respond_to :atom, :only => :index
  
  def index
    @players = Player.find(:all, :include => [:positions, :nhl_team])
  end
  
  def edit
    @player = Player.find params[:id]
    @nhl_teams = NhlTeam.all
  end
end
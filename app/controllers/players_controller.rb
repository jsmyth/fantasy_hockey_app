class PlayersController < InheritedResources::Base
  respond_to :html, :xml
  respond_to :json, :only => :index
  respond_to :atom, :only => :index
  
  def index
    @players = Player.find(:all, :order => :yahoo_orank, :include => {:roster_assignments => {:fantasy_team => {:participations => :fantasy_season}}})
    respond_to do |format|
      format.html 
      format.xml  { render :xml    => @players }
      format.pdf  { render :layout => false    }
      format.json { render :json   => @players }
      format.xls  { render :layout => false    }
      #  players_book = PlayerSpreadsheet.new("#{RAILS_ROOT}/public/spreadsheets/#{@current_fantasy_team.name.gsub(/[^a-z0-9]+/i, '_')}-List_of_all_players.xls")

      #  players_book.add_sheet("#{@current_fantasy_season.league.name} #{@current_fantasy_season.name}")
      #  players_book.list_players(@players,@current_fantasy_season,@current_fantasy_team)
      #  players_book.close

      # send_file "#{RAILS_ROOT}/public/spreadsheets/#{@current_fantasy_team.name.gsub(/[^a-z0-9]+/i, '_')}-List_of_all_players.xls", :type => "applicaion/vnd.ms-excel"
      #}
    end
  end
  
  def new
    @player = Player.new
    @nhl_teams = NhlTeam.all
    @positions = Position.all
    
    render :layout => false
  end

  def create
    @player = Player.new(params[:player])
    
    if @player.save
      flash[:notice] = "Successfully created player."
    else
      flash[:error] = "Can't create player!"
    end

    redirect_to request.referer ? :back : players_url
  end
    
  def edit
    @player = Player.find params[:id]
    @nhl_teams = NhlTeam.all
  end
end
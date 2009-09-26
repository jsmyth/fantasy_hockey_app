class PlayerSpreadsheet
  attr_accessor :workbook, :worksheet

  def initialize(filename="elevation.xls")
    # Create a new @workbook and pass a filename for our spreadsheet
    self.workbook  = WriteExcel.new(filename)
    self.format
  end

  def add_sheet(name)
    # Add a worksheet to our @workbook and hide the gridlines
    worksheet = self.workbook.add_worksheet(name)
    worksheet.hide_gridlines(2)

    # Set row heights
    #worksheet.set_row(1, 14)
    #worksheet.set_row(2, 14)

    # Set column widths
    worksheet.set_column('B:B', 9)
    worksheet.set_column('C:C', 9)
    worksheet.set_column('D:D', 50)
    worksheet.set_column('E:E', 5)
    worksheet.set_column('F:F', 10)
    
    self.worksheet = worksheet
  end

  def format
    #####################################
    #
    #  FORMATS
    #
    
    # This is for the cab unit numbers that run along the side
    # of the cabinet.
    @format_unavailable = self.workbook.add_format(
      :color => 'gray',
      :font_strikeout => 1,
      :valign => 'vcenter',
      :align  => 'center',
      :size => 14,
      :bottom => 1
    )

    # Standard formatting for a device in a cabinet.
    @format_mine = self.workbook.add_format(
      :valign => 'vcenter',
      :align  => 'center',
      :bg_color => 'navy',
      :color => 'white',
      :size => 14,
      :border => 1,
      :bottom => 1
    )

    # Standard foormatting for devices that span multiple units.
    @format_watching = self.workbook.add_format(
      :valign => 'vcenter',
      :align  => 'center',
      :bg_color => 'white',
      :color => 'black',
      :size => 14,
      :bold => 1,
      :bottom => 1
    )
    
    # Standard foormatting for devices that span multiple units.
    @format_standard = self.workbook.add_format(
      :valign => 'vcenter',
      :align  => 'center',
      :color => 'black',
      :size => 14,
      :bottom => 1
    )
  end

  def list_players(players,fantasy_season,fantasy_team)
    self.worksheet.write 'C2', "League: #{fantasy_season.league.name}"
    self.worksheet.write 'C3', "Season: #{fantasy_season.name}"

    #self.worksheet.insert_image(10, 1, '/var/www/rails/fantasy_hockey_app/public/photos/2/thumb/2475.jpg', 8, 12)
    
    players[0..5].each_with_index do |player,index|
      @format = ''
      
      if owned_by(player,fantasy_season) == fantasy_team.name
        @format = @format_mine
      elsif owned_by(player,fantasy_season) != 'FA'
        @format = @format_unavailable
      else
        @format = @format_standard
      end
      
      puts index + 1
      #self.worksheet.set_row(index + 4, 50)
      #self.worksheet.insert_image(index + 4, 1, player_photo(player), 8, 12)
      self.worksheet.write(index + 4, 2, player.beacon_id, @format)
      self.worksheet.write(index + 4, 3, player.name,      @format)
      self.worksheet.write(index + 4, 4, player.nhl_team.abbreviation,    @format)
      self.worksheet.write(index + 4, 5, owned_by(player,fantasy_season), @format)
    end
  end
  
  def player_photo(player)
    if player.photo_file_name
      player_photo_path = "/var/www/rails/fantasy_hockey_app/public/photos/#{player.id}/thumb/#{player.photo_file_name}"
    else
      player_photo_path = "/var/www/rails/fantasy_hockey_app/public/photos/3/thumb/1906.png"
    end
    puts "PLAYER NAME: #{player.name}"
    puts "PLAYER PHOTO PATH: #{player_photo_path}"
    return player_photo_path
  end
  
  def owned_by(player,fantasy_season)
    owned_by = player.fantasy_teams.find(:first,
      :include    => :fantasy_seasons,
      :conditions => ["fantasy_seasons.id = ?", fantasy_season]
    ).name rescue nil

    owned_by ||= 'FA'
  end

  def close
    # And finally, close the @workbook
    self.workbook.close
  end
end
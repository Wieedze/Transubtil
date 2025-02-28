class ArtistController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    # Charge et parse le fichier JSON
    file = File.read(Rails.root.join('mockdata', 'artistes.json'))
    artists = JSON.parse(file)

    # Trouver l'artiste dans le tableau des artistes
    @artist = artists.find { |artist| artist['id'] == params[:id].to_i }

    if @artist.nil?
      flash[:alert] = "Artist not found"
      redirect_to artists_path
    end
  end
end

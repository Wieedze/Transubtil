class Artist < ApplicationRecord
  require "json"
  # Méthode pour charger les artistes à partir du fichier JSON
  def self.all
    file_path = Rails.root.join("mockdata", "artistes.json")
    JSON.parse(File.read(file_path))
  end
end

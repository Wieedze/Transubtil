class MerchandisingController < ApplicationController
  

    def index
      # Vérifier le chemin du fichier
      file_path = Rails.root.join('mockdata', 'products.json')
  
      if File.exist?(file_path)
        # Affiche le chemin pour vérifier que le fichier existe
        puts "Fichier trouvé à : #{file_path}"
  
        # Lire et parser le fichier JSON
        file_content = File.read(file_path)
        
        # Vérifier que le contenu est bien récupéré
        puts "Contenu du fichier JSON : #{file_content}"
  
        @products = JSON.parse(file_content)
        
        # Vérifier la structure des produits après parsing
        puts "Produits chargés : #{@products.inspect}"
      else
        @products = []
        flash[:error] = "Le fichier des produits est introuvable."
      end
    end
  
  
  def show
  end 

end
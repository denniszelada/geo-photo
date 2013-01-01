image = File.open(File.join(Rails.root, "app" , "assets", "images", "rails.png"))

Photo.create(:lat => 39.12, :lng => 94.60, :image => image)

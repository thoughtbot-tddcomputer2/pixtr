Factory.define :gallery do |gallery|
  gallery.title "Gallery 1"
  gallery.association(:user)
end
puts "Création catégories"
Theme.create!(title: "Vanlife")
Theme.create!(title: "J'aménage mon T4 volskwagen")
Theme.create!(title: "Road Trips")
Theme.create!(title: "Digital nomade")
Theme.create!(title: "Je crée mon site de A à Z")
Theme.create!(title: "SEO")

=begin

SubTheme.create(category_id: @cat1.id, sub_theme_id: cat1_1.id )
SubTheme.create(category_id: @cat1.id, sub_theme_id: cat1_2.id )
SubTheme.create(category_id: @cat2.id, sub_theme_id: cat2_1.id )
SubTheme.create(category_id: @cat2.id, sub_theme_id: cat2_2.id )
=end

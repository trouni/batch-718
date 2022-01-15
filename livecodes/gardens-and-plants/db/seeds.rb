if Rails.env.development?
  puts "Destroying all the gardens and tags..."
  # Plant.destroy_all not needed becaue we have dependent destroy
  Garden.destroy_all
end

puts "Seed gardens..."
shinjuku = Garden.create!(
  name: "Shinjuku Gyoen, Tokyo",
  banner_url: "https://d20aeo683mqd6t.cloudfront.net/wp-content/uploads/2015/03/Shinjuku_Gyoen_National_Garden_-_sakura_3.jpg"
  )

Garden.create!(
  name: "Kourakuen, Okayama",
  banner_url: "https://a3.cdn.japantravel.com/photo/33658-163285/1440x960!/okayama-jardin-korakuen-okayama-163285.jpg"
  )

Garden.create!(
  name: "Risturin, Takamatsu",
  banner_url: "https://upload.wikimedia.org/wikipedia/commons/0/0b/Ritsurin.JPG"
  )

puts "Seed plants..."
Plant.create!(
  name: "Bonzai",
  image_url: "http://iris-bleu.i.r.pic.centerblog.net/o/2632ebdc.jpg",
  garden: shinjuku
)

Plant.create!(
  name: "Momiji",
  image_url: "https://www.thetreecenter.com/wp-content/uploads/japanese-maple-osakazuki-2.jpg",
  garden: shinjuku
)

Plant.create!(
  name: "Sakura tree",
  image_url: "https://bitrebels.com/wp-content/uploads/2012/05/cherry-blossom-cupcake-painting-4.jpg",
  garden: shinjuku
)

Plant.create!(
  name: "Baobab",
  image_url: "https://s3.amazonaws.com/cdn.matadornetwork.com/blogs/1/2018/06/Baobab-tree-1200x853.jpg",
  garden: shinjuku
)

puts "Seeding done!"

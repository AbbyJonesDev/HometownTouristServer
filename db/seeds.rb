# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Author.destroy_all
authors = Author.create([
  {
    firstName: 'Abby',
    lastName: 'Jones',
    bio: 'Former teacher, current software engineer. Guitar player, Shiba Inu owner, Omaha native.',
  }
])

Category.destroy_all
categories = Category.create([
  {
    name: 'Nature/Outdoors',
    description: 'Parks, lakes, forests, gardens'
  },
  {
    name: 'Sports',
    description: 'College and professional sports and the best places to watch them'
  },
  {
    name: 'Theater',
    description: 'Professional and community theater'
  },
  {
    name: 'Art/Museums',
    description: 'Art galleries, studios, and museums'
  },
  {
    name: 'Music',
    description: 'Live music events and venues'
  },
  {
    name: 'Drinking and Dining',
    description: 'Fine food and drink of all kinds'
  },
  {
    name: 'Shopping',
    description: 'Local makers, unique products and shopping experiences'
  },
  {
    name: 'Play Time',
    description: 'Amusement parks, boardgame cafes, and other places to just have fun'
  },
  {
    name: 'History',
    description: 'Connect with stories and artifacts from the past'
  },
  {
    name: 'Neighborhoods',
    description: 'Culture, history, and special features of local neighborhoods'
  },
  {
    name: 'Education and Exploration',
    description: 'Places to learn and explore new possibilities'
  }
])

Tag.destroy_all
tags = Tag.create([
  {
    name: 'Kid-Friendly',
    description: 'Good for kids under age 12'
  },
  {
    name: 'Dog-Friendly',
    description: 'Furry companions welcome'
  },
  {
    name: 'Free',
    description: 'No money required to have a great time'
  },
  {
    name: 'Under $10',
    description: 'Cost is no more than $10/person'
  }
])

State.destroy_all
states = State.create([
  {
    name: 'Nebraska',
    abbreviation: 'NE'
  },
  {
    name: 'Iowa',
    abbreviation: 'IA'
  },
  {
    name: 'Missouri',
    abbreviation: 'MO'
  },
  {
    name: 'Minnesota',
    abbreviation: 'MN'
  },
  {
    name: 'Kansas',
    abbreviation: 'KS'
  },
  {
    name: 'Colorado',
    abbreviation: 'CO'
  },
  {
    name: 'South Dakota',
    abbreviation: 'SD'
  }
])

City.destroy_all
cities = City.create([
  {
    name: 'Omaha',
    state: states.first
  },
  {
    name: 'Bellevue',
    state: states.first
  },
  {
    name: 'Papillion',
    state: states.first
  },
  {
    name: 'Lincoln',
    state: states.first
  },
  {
    name: 'Ashland',
    state: states.first
  }
])

# Helper to get full file path for posts
def getFilePath(name)
  File.join(File.dirname(__FILE__), name)
end

# Helpers to get tag id's
kid_friendly = Tag.find_by name: 'Kid-Friendly'
dog_friendly = Tag.find_by name: 'Dog-Friendly'
free = Tag.find_by name: 'Free'
under_ten = Tag.find_by name: 'Under $10'


Post.destroy_all
posts = Post.create([
  {
    author: authors.first,
    title: 'Outdoor Adventure with My Favorite Furry Tourists',
    place: 'Halleck Park',
    featured_image: 'http://4.bp.blogspot.com/_lRuiVdtkJlo/S4BcAWX47LI/AAAAAAAAADI/9h60Rhuy3w0/s320/DSC00621.JPG',
    body: File.read(getFilePath('/posts/OutdoorAdventure.md')),
    city: cities[2],
    state: states.first,
    publish_date: DateTime.new(2010, 2, 10),
    category_ids: [categories[0].id],
    tag_ids: [dog_friendly.id, kid_friendly.id, free.id]
  },
  {
    author: authors.first,
    title: 'Artists Co-Op Gallery',
    place: 'Artists Co-Op Gallery',
    featured_image: 'http://2.bp.blogspot.com/_lRuiVdtkJlo/S-YcKBHZJlI/AAAAAAAAAIU/Dc4l6q3cM-g/s320/DSC00875.JPG',
    body: File.read(getFilePath('/posts/Co-OpGallery.md')),
    city: cities[0],
    state: states.first,
    publish_date: DateTime.new(2010, 3, 7),
    category_ids: [categories[3].id]
  },
  {
    author: authors.first,
    title: 'Reader\'s Theater: "Recommended Reading for Girls"',
    place: 'Omaha Community Playhouse',
    featured_image: 'http://1.bp.blogspot.com/_lRuiVdtkJlo/S5g_HNNSexI/AAAAAAAAAEA/-GRCPtC7_RU/s320/DSC00653.JPG',
    body: File.read(getFilePath('/posts/ReadersTheater.md')),
    city: cities[0],
    state: states.first,
    publish_date: DateTime.new(2010, 3, 10),
    category_ids: [categories[2].id]
  },
  {
    author: authors.first,
    title: 'Pardon my Crumbs...',
    place: 'Great Harvest Bread Company',
    featured_image: 'http://2.bp.blogspot.com/_lRuiVdtkJlo/S6zy41900MI/AAAAAAAAAEg/YVD4o6aDXFE/s320/DSC00726.JPG',
    body: File.read(getFilePath('/posts/GreatHarvest.md')),
    city: cities[0],
    state: states.first,
    publish_date: DateTime.new(2010, 3, 26),
    category_ids: [categories[5].id]
  },
  {
    author: authors.first,
    title: 'Holmes Lake - Lincoln',
    place: 'Holmes Lake',
    featured_image: 'http://4.bp.blogspot.com/_lRuiVdtkJlo/S7bOkxHgOeI/AAAAAAAAAGY/s1gfBanejhs/s320/DSC00749.JPG',
    body: File.read(getFilePath('/posts/HolmesLake.md')),
    city: cities[3],
    state: states.first,
    publish_date: DateTime.new(2010, 4, 3),
    category_ids: [categories[0].id],
    tag_ids: [kid_friendly.id, dog_friendly.id, free.id]
  },
  {
    author: authors.first,
    title: 'Hot Shops Art Gallery',
    place: 'Hot Shops',
    featured_image: 'http://4.bp.blogspot.com/_lRuiVdtkJlo/S94-FfD6l3I/AAAAAAAAAH8/S5btZ0jVhPY/s320/DSC00785.JPG',
    body: File.read(getFilePath('/posts/HotShops.md')),
    city: cities[0],
    state: states.first,
    publish_date: DateTime.new(2010, 5, 2),
    category_ids: [categories[3].id]    
  },
  {
    author: authors.first,
    title: 'Omaha the Beautiful',
    place: 'Old Market',
    featured_image: 'http://2.bp.blogspot.com/_lRuiVdtkJlo/S-YuJjHbl7I/AAAAAAAAAKQ/g7XyXcJ49NQ/s320/DSC00841.JPG',
    body: File.read(getFilePath('/posts/OmahaBeautiful.md')),
    city: cities[0],
    state: states.first,
    publish_date: DateTime.new(2010, 5, 8),
    category_ids: [categories[9].id],
    tag_ids: [kid_friendly.id, dog_friendly.id, free.id]    
  },
  {
    author: authors.first,
    title: 'Ted and Wally\'s Premium Homemade Ice Cream',
    place: 'Ted and Wally\'s',
    featured_image: 'http://2.bp.blogspot.com/_lRuiVdtkJlo/TABVg3MckSI/AAAAAAAAALQ/spECZb54zpQ/s320/DSC00895.JPG',
    body: File.read(getFilePath('/posts/TedAndWallys.md')),
    city: cities.first,
    state: states.first,
    publish_date: DateTime.new(2010, 5, 28),
    category_ids: [categories[5].id],
    tag_ids: [kid_friendly.id, under_ten.id]
  },
  {
    author: authors.first,
    title: 'Strategic Air and Space Museum',
    place: 'Strategic Air and Space Museum',
    featured_image: 'http://4.bp.blogspot.com/_lRuiVdtkJlo/TAJ7i01UoFI/AAAAAAAAAL4/LogeiaF98vE/s320/DSC00917.JPG',
    body: File.read(getFilePath('/posts/SASM.md')),
    city: cities[4],
    state: states.first,
    publish_date: DateTime.new(2010, 5, 30),
    category_ids: [categories[3].id, categories[8].id, categories[10].id],
    tag_ids: [kid_friendly.id]
  },
  {
    author: authors.first,
    title: 'Take Me Out to the Ballgame - Take Me Out to the Blatt',
    place: 'Rosenblatt Stadium',
    featured_image: 'http://4.bp.blogspot.com/_lRuiVdtkJlo/TBgvLxkea-I/AAAAAAAAANo/p0FySMhF8uw/s320/DSC00983.JPG',
    body: File.read(getFilePath('/posts/Rosenblatt.md')),
    city: cities.first,
    state: states.first,
    publish_date: DateTime.new(2010, 6, 15),
    category_ids: [categories[1].id]    
  },
  {
    author: authors.first,
    title: 'Stories from the Cemetery',
    place: 'Propect Hill Cemetery',
    featured_image: 'http://2.bp.blogspot.com/_lRuiVdtkJlo/TBl4v5_fegI/AAAAAAAAAOw/i3dCrJyCyLQ/s320/DSC01187.JPG',
    body: File.read(getFilePath('/posts/ProspectHill.md')),
    city: cities.first,
    state: states.first,
    publish_date: DateTime.new(2010, 6, 16),
    category_ids: [categories[8].id],
    tag_ids: [free.id]
  },
  {
    author: authors.first,
    title: 'The Old Market in a New Light',
    place: 'Old Market',
    featured_image: 'http://4.bp.blogspot.com/_lRuiVdtkJlo/TCADDfXQZJI/AAAAAAAAAQQ/S6LvGyoIUXs/s320/DSC01218.JPG',
    body: File.read(getFilePath('/posts/OldMarket.md')),
    city: cities.first,
    state: states.first,
    publish_date: DateTime.new(2010, 6, 21),
    category_ids: [categories[8].id, categories[9].id],
    tag_ids: [free.id]    
  },
  {
    author: authors.first,
    title: 'Hello, South 24th Street',
    place: 'South 24th Street',
    featured_image: 'http://4.bp.blogspot.com/_lRuiVdtkJlo/TCUH1ubeb5I/AAAAAAAAATA/vuEo7uQNUdw/s400/DSC01096.JPG',
    body: File.read(getFilePath('/posts/South24th.md')),
    city: cities.first,
    state: states.first,
    publish_date: DateTime.new(2010, 6, 25),
    category_ids: [categories[8].id, categories[9].id],
    tag_ids: [free.id]    
  },
  {
    author: authors.first,
    title: 'Union Station - aka Durham Museum',
    place: 'Durham Western Heritage Museum',
    featured_image: 'http://4.bp.blogspot.com/_lRuiVdtkJlo/TCpI_k7xl2I/AAAAAAAAAU4/Soa9Pe8Q-5o/s400/Durham+Couple+Waiting.jpg',
    body: File.read(getFilePath('/posts/Durham.md')),
    city: cities.first,
    state: states.first,
    publish_date: DateTime.new(2010, 6, 29),
    category_ids: [categories[3].id, categories[8].id],
    tag_ids: [kid_friendly.id]     
  },
  {
    author: authors.first,
    title: 'Lauritzen Gardens',
    place: 'Lauritzen Gardens',
    featured_image: 'http://4.bp.blogspot.com/_lRuiVdtkJlo/TC46cV1qTpI/AAAAAAAAAXw/hUh-Za4C5P8/s400/Lauritzen+Hidden+Door.jpg',
    body: File.read(getFilePath('/posts/Lauritzen.md')),
    city: cities.first,
    state: states.first,
    publish_date: DateTime.new(2010, 7, 2),
    category_ids: [categories[0].id],
    tag_ids: [kid_friendly.id]    
  },
  {
    author: authors.first,
    title: 'Ingrid Michaelson at the Slowdown',
    place: 'The Slowdown',
    featured_image: 'http://4.bp.blogspot.com/_lRuiVdtkJlo/TDp01rUx_aI/AAAAAAAAAaI/8GcQsjf8pDs/s400/Slowdown+Sign+Daylight.jpg',
    body: File.read(getFilePath('/posts/Slowdown.md')),
    city: cities.first,
    state: states.first,
    publish_date: DateTime.new(2010, 7, 11),
    category_ids: [categories[4].id]
  },
  {
    author: authors.first,
    title: 'Not NoDo Anymore',
    place: 'North Downtown Omaha',
    featured_image: 'http://1.bp.blogspot.com/_lRuiVdtkJlo/TK5j7mDs7hI/AAAAAAAAAcU/nrNOmOKUNcU/s1600/Slowdown+Sign.jpg',
    body: File.read(getFilePath('posts/NotNoDoAnymore.md')),
    city: cities.first,
    state: states.first,
    publish_date: DateTime.new(2010, 10, 7),
    category_ids: [categories[9].id]
  }
])
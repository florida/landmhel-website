# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

agent1 = Agent.create(first_name: "Imelda", last_name: "Elago", phone: "+12048990838", email: "landmhel@gmail.com", description: "Powder chupa chups bonbon lemon drops cookie gingerbread oat cake sweet roll oat cake. I love sweet muffin I love. Cookie bear claw danish jelly. Tiramisu tiramisu.")
agent2 = Agent.create(first_name: "Jane", last_name: "Doe", phone: "+12041112222", email: "jane_doe@gmail.com", description: "su danish apple pie ice cream danish. Marshmallow tart lollipop tootsie roll. Applicake chocolate chocolate I love I love. Jujubes cheesecake I love chupa chups I love cake pudding");

image1 = Image.create(image_file: File.open(File.expand_path("..", File.dirname(__FILE__)) + "/tmp/uploads/house_1.jpg"))
image2 = Image.create(image_file: File.open(File.expand_path("..", File.dirname(__FILE__)) + "/tmp/uploads/house_2.jpg"))
image3 = Image.create(image_file: File.open(File.expand_path("..", File.dirname(__FILE__)) + "/tmp/uploads/house_3.jpg"))
image4 = Image.create(image_file: File.open(File.expand_path("..", File.dirname(__FILE__)) + "/tmp/uploads/house_4.jpg"))
image5 = Image.create(image_file: File.open(File.expand_path("..", File.dirname(__FILE__)) + "/tmp/uploads/house_5.jpg"))
image6 = Image.create(image_file: File.open(File.expand_path("..", File.dirname(__FILE__)) + "/tmp/uploads/house_6.jpg"))
image7 = Image.create(image_file: File.open(File.expand_path("..", File.dirname(__FILE__)) + "/tmp/uploads/house_7.jpg"))



Listing.create([
                {address: '1012 Redwood Avenue', city: 'Winnipeg', province: 'MB', area: 'Shaughnessy Heights', property_type: 'Single Family', building_type: 'House', bedrooms: 2, bathrooms: 3, storeys: 1, price: 69900, year_built: 1988, featured: true, sold: false, description: "su danish apple pie ice cream danish. Marshmallow tart lollipop tootsie roll. Applicake chocolate chocolate I love I love. Jujubes cheesecake I love chupa chups I love cake pudding", agent: agent1, images: [image1, image2]},
                {address: '487 Boyd Avenue', city: 'Winnipeg', province: 'MB', area: 'North End', property_type: 'Single Family', building_type: 'House', bedrooms: 2, bathrooms: 3, storeys: 1, price: 69900, year_built: 1988, featured: true, sold: false, description: "su danish apple pie ice cream danish. Marshmallow tart lollipop tootsie roll. Applicake chocolate chocolate I love I love. Jujubes cheesecake I love chupa chups I love cake pudding", agent: agent2, images: [image3, image4]},
                {address: '480 Augier Avenue', city: 'Winnipeg', province: 'MB', area: 'Westwood', property_type: 'Single Family', building_type: 'House', bedrooms: 2, bathrooms: 3, storeys: 1, price: 69900, year_built: 1988, featured: true, sold: false, description: "su danish apple pie ice cream danish. Marshmallow tart lollipop tootsie roll. Applicake chocolate chocolate I love I love. Jujubes cheesecake I love chupa chups I love cake pudding", agent: agent2, images: [image5, image6]},
                {address: '459 Aberdeen Avenue', city: 'Winnipeg', province: 'MB', area: 'North End', property_type: 'Single Family', building_type: 'House', bedrooms: 2, bathrooms: 3, storeys: 1, price: 69900, year_built: 1988, featured: true, sold: false, description: "su danish apple pie ice cream danish. Marshmallow tart lollipop tootsie roll. Applicake chocolate chocolate I love I love. Jujubes cheesecake I love chupa chups I love cake pudding", agent: agent2, images: [image7]}
              ])
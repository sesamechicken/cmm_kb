# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

categories = []

rand(10).times do

	c = Category.create(
		title: Faker::Commerce.department
	)
	categories << c.id
end


rand(10..20).times do
    a = Article.create(
      title: Faker::Company.name, 
      body: Faker::Lorem.paragraph(10),
      public: true,
      category_id: categories.sample,
      author: Faker::Name.first_name)
    # set the created_at to a time within the past year
    a.update_attribute(:created_at, Time.now - rand(600..31536000))

  end
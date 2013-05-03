# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Topic.create(:title => "Admissions", :description => "Admissions")
Topic.create(:title => "Deals", :description => "Deals")
Topic.create(:title => "Enrollment Management", :description => "Enrollment Management")
Topic.create(:title => "Executive Briefing", :description => "Executive Briefing")
Topic.create(:title => "Finance", :description => "Finance")
Topic.create(:title => "Leadership", :description => "Leadership")
Topic.create(:title => "Management", :description => "Management")
Topic.create(:title => "Marketing", :description => "Marketing")
Topic.create(:title => "Numbers Worth Knowing", :description => "Numbers Worth Knowing")
Topic.create(:title => "Online Learning", :description => "Online Learning")
Topic.create(:title => "Overhead", :description => "Overhead")
Topic.create(:title => "Potpourri", :description => "Potpourri")
Topic.create(:title => "Research", :description => "Research")
Topic.create(:title => "Student Services", :description => "Student Services")
Topic.create(:title => "Sustainability", :description => "Sustainability")
Topic.create(:title => "Teaching & Learning", :description => "Teaching & Learning")
Topic.create(:title => "Technology", :description => "Technology")

Category.create(:name => "News")
Category.create(:name => "Interviews")
Category.create(:name => "Interviews")
Category.create(:name => "Executive Suite")
Category.create(:name => "Enrollment Management")
Category.create(:name => "Financial Aid & Bursar")


JobPackage.create(:name => "Premium Job", :description => "", :no_of_credits =>0, :amount => 0, :status => true)
JobPackage.create(:name => "Premium Job", :description => "Increase the impact of your ad with top positioning in search results and a link in one day's edition of our Daily News Update opt-in e-mail newsletter", :no_of_credits => 1, :amount => 150, :status => true)
JobPackage.create(:name => " Spotlight Job", :description => "Add a banner ad on the Inside Higher Ed home page plus a fully designed Web page exclusively for your search. Runs for 30 days and includes Premium Posting benefits", :no_of_credits => 5, :amount => 995, :status => true)



JobValidity.create(:name => "30 Days", :no_of_credits =>1, :amount => 20, :status => true)
JobValidity.create(:name => "6  0 Days", :no_of_credits =>4, :amount => 60, :status => true)
JobValidity.create(:name => "30 Days", :no_of_credits =>4, :amount => 99, :status => true)

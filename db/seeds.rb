# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

#The below line creates a default email/password login. It is recommended to change the default password after signing in.
User.create( :email => "acmeca@singnet.com.sg", :password => "foobar", :password_confirmation => "foobar" )

#These lines below create categories

Category.create( :name => "Aircon" )
Category.create( :name => "Air Cooler" )
Category.create( :name => "Misting System" )
Category.create( :name => "Others" )

#These lines below create gcategories

Gcategory.create( :name => "Aircon" )
Gcategory.create( :name => "Air Cooler" )
Gcategory.create( :name => "Misting System" )



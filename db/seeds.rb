# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_admin = 
    {
        username: "super_admin",
        password: "password123",
        password_confirmation: "password123", 
        firstname: "Super",
        lastname: "Admin",
        phone_number: 0400400400,
        email: "super_admin@test.com",
        address: "123 super lane",
        postcode: 4000,
        state: "Queensland",
        country: "Australia",
        admin_role: true
    }

user_seller = 
{
    username: "seller",
    password: "password123",
    password_confirmation: "password123",
    firstname: "Seller",
    lastname: "Role",
    phone_number: 0400000400,
    email: "seller@test.com",
    address: "456 seller street",
    postcode: 4000,
    state: "Queensland",
    country: "Australia",
    seller_role: true
}

user_customer = 

    {
        username: "customer",
        password: "password123",
        password_confirmation: "password123",
        firstname: "Customer",
        lastname: "Role",
        phone_number: 0400040000,
        email: "customer@test.com",
        address: "789 customer street",
        postcode: 4000,
        state: "Queensland",
        country: "Australia",
        customer_role: true 
    }


User.destroy_all

admin = User.create!(user_admin)
seller = User.create!(user_seller)
customer = User.create!(user_customer)

amiibo_details1 = 
    {
        amibo_name: "Princess Peach",
        amibo_type: "Figure",
        amibo_price: 23.50,
        amibo_game_series: "Super Mario",
        amibo_condition: "New",
        description: "Brand New, Still in box",
        user_id: seller.id 

    }


amiibo_details2 = 
    {
        amibo_name: "Mario",
        amibo_type: "Figure",
        amibo_price: 30.50,
        amibo_game_series: "Super Mario",
        amibo_condition: "Used",
        description: "In good condition",
        user_id: seller.id 

    }


amiibo_details3 = 
    {
        amibo_name: "Kirby",
        amibo_type: "Figure",
        amibo_price: 63.50,
        amibo_game_series: "Kirby",
        amibo_condition: "New",
        description: "Brand New, Limited Edition",
        user_id: seller.id

    }


Amiibo.destroy_all


amiibo1 = Amiibo.new(amiibo_details1)
amiibo1.image.attach(io: File.open(File.join(Rails.root, 'app/assets/images/princess_peach.png')), filename: 'princess_peach.png')
amiibo1.save

amiibo2 = Amiibo.new(amiibo_details2)
amiibo2.image.attach(io: File.open(File.join(Rails.root, 'app/assets/images/mario.jpeg')), filename: 'mario.jpeg')
amiibo2.save

amiibo3 = Amiibo.new(amiibo_details3)
amiibo3.image.attach(io: File.open(File.join(Rails.root, 'app/assets/images/kirby.jpeg')), filename: 'kirby.jpeg')
amiibo3.save



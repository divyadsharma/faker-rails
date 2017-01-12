namespace :db do
  desc 'populates user details'
  task populate: :environment do
    User.destroy_all
    100.times do
      User.create!(
        name: Faker::Name.name,
        age: Faker::Number.between(18,100),
        email: Faker::Internet.email,
        story: Faker::Lorem.paragraph(2)
        )
    end
  end
end
